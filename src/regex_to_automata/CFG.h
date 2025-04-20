#ifndef CFG_H
#define CFG_H

#include <istream>
#include <ostream>
#include <string>
#include <unordered_map>
#include <vector>

class CFG;

class CFGBuilder {
public:
	CFGBuilder(std::istream& in);

	void addRule(std::string left, std::vector<std::string> right);
	
	friend CFG;
private:
	int startId = -1;
	int lambdaId = -1;
	int endId = -1;
	std::unordered_map<std::string, int> tokenIds;
	std::unordered_map<int, int> nonTerminalIds;
	std::vector<int> nonTerminalTokenIds;
	std::vector<std::string> tokens;
	std::vector<std::vector<int>> rules;
	
	int getTokenId(std::string token);
};

class CFG {
public:
	struct ParseNode {
		static int numIds;
		int id = numIds++;
		ParseNode* parent = nullptr;
		int numChildren;
		int curChild = 0;
		ParseNode** children;
		int tokenId;
		std::string value;
		
		ParseNode(int numChildren, std::string value);
		
		~ParseNode();
		
		ParseNode* addChild(ParseNode* child, bool propagate = true);
		
		int getChildIndex(ParseNode* child);
		
		ParseNode* clone();
		
		static ParseNode* create(int numChildren, std::string value, int tokenId);
		
		friend std::ostream& operator<<(std::ostream& out, const ParseNode& node);
	};

	CFG() = delete;
	
	CFG(const CFG& cfg) = delete;
	
	CFG& operator=(CFG& otherCFG) = delete;
	
	CFG(const CFGBuilder& unfinishedCFG);
	
	~CFG();
	
	void displayParse(std::ostream& out, std::vector<std::string> processingStack);
	
	void displayAST(std::istream& sdtProcsIn, std::ostream& out, std::istream& in);
	
	ParseNode* getAST(std::istream& sdtProcsIn, std::istream& in);
	
	void displayLRParse(std::istream& parseTableIn, std::ostream& out, std::istream& in);
	
	void findParseTree(std::ostream& out, std::istream& in);
	
	friend std::ostream& operator<<(std::ostream& out, const CFG& cfg);
private:
	class SDTProc {
	public:
		SDTProc(std::string conditionsLine, std::string operationsLine);
		
		void apply(ParseNode*& node, std::string* tokens) const;
	private:
		class Operation {
		public:
			Operation(std::string operationLine);
			
			void apply(ParseNode*& node) const;
		private:
			std::string type;
			std::string caller;
			std::vector<std::string> targets;
		};
		
		static std::vector<ParseNode*> interpretPath(std::string pathLine, ParseNode* sourceNode);
		
		std::vector<std::pair<std::string,std::string>> conditions;
		std::vector<Operation> operations;
	};

	void generateDerivesToLambda();
	
	void derivesToLambdaHelper(int nonTerminalId);
	
	bool allDeriveToLambda(int ruleId) const;
	
	void generateFirstSets();
	
	std::vector<int> firstSetHelper(int nonTerminalId, std::vector<int> path = {});
	
	void generateFollowSets();
	
	std::vector<int> followSetHelper(int nonTerminalId, std::vector<int> path = {});
	
	void generatePredictSets();
	
	void generateParseTable();
	
	bool checkConditions(ParseNode* node, std::vector<std::string> conditions);
	
	int startId;
	int lambdaId;
	int endId;
	std::unordered_map<std::string, int> tokenIds;
	std::string* tokens;
	int numNonTerminals;
	int* nonTerminalIds; //Indexed by token id
	int* nonTerminalTokenIds; //Indexed by non terminal id
	int numTerminals;
	int* terminalIds; //Indexed by token id
	int* terminalTokenIds; //Indexed by terminal id
	int numRules;
	int* rules; //Each rule is LHS's token id, number of tokens in RHS, RHS represented by token ids
	int* ruleLocations; //Indexed by rule id
	int** nonTerminalRules; //Each list contains the number of rules first
	bool* hasLambdaRule;
	bool* derivesToLambda;
	std::vector<std::vector<int>> firstSets;
	std::vector<std::vector<int>> followSets;
	std::vector<std::vector<int>> predictSets;
	int* parseTable;
public:
	friend std::ostream& operator<<(std::ostream& out, const ParseNode& node);
};


#endif