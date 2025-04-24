#include <algorithm>
#include <deque>
#include <istream>
#include <numeric>
#include <ostream>
#include <string>
#include <tuple>
#include <unordered_map>
#include <utility>
#include <vector>

#include "CFG.h"

#include "utilities.h"

int CFG::ParseNode::numIds = 0;

CFGBuilder::CFGBuilder(std::istream& in) {
	std::string curLHS;
	std::string curSymbol;
	std::string nextSymbol;
	std::vector<std::string> curRHS;
	
	in >> curSymbol >> nextSymbol;
	
	while (!in.fail()) {
		if (nextSymbol == "->") {
			if (!curRHS.empty()) {
				addRule(curLHS, curRHS);
				curRHS.clear();
			}
			
			curLHS = curSymbol;
			
			in >> nextSymbol;
		} else if (curSymbol == "|") {
			addRule(curLHS, curRHS);
			curRHS.clear();
		} else {
			curRHS.push_back(curSymbol);
		}
		
		curSymbol = nextSymbol;
		in >> nextSymbol;
	}
	curRHS.push_back(curSymbol);
	addRule(curLHS, curRHS);
}

void CFGBuilder::addRule(std::string left, std::vector<std::string> right) {
	int leftTokenId = getTokenId(left);
	std::vector<int> rule = {leftTokenId};
	bool hasEndToken = false;
	
	for (std::string token : right) {
		int tokenId = getTokenId(token);
		rule.push_back(tokenId);
		
		if (tokenId == endId) {
			hasEndToken = true;
		}
	}
	
	if (hasEndToken) {
		startId = leftTokenId;
	}
	
	rules.push_back(rule);
}

int CFGBuilder::getTokenId(std::string token) {
	auto tokenIdIter = tokenIds.find(token);
	
	if (tokenIdIter == tokenIds.end()) {
		int tokenId = tokenIds.size();
		tokenIds.emplace(token, tokenId);
		tokens.push_back(token);
		
		if (token == "lambda") {
			lambdaId = tokenId;
		} else if (token == "$") {
			endId = tokenId;
		} else if (std::any_of(token.begin(), token.end(), isupper)) {
			nonTerminalIds.emplace(tokenId, rules.size());
			nonTerminalTokenIds.push_back(tokenId);
		}
		
		return tokenId;
	} else {
		return tokenIdIter->second;
	}
}

CFG::CFG(const CFGBuilder& unfinishedCFG) {
	startId = unfinishedCFG.startId;
	lambdaId = unfinishedCFG.lambdaId;
	endId = unfinishedCFG.endId;
	tokenIds = unfinishedCFG.tokenIds;
	tokens = toArray<std::string>(unfinishedCFG.tokens);
	
	nonTerminalIds = new int[tokenIds.size()];
	for (unsigned int tokenId = 0; tokenId < tokenIds.size(); tokenId++) {
		nonTerminalIds[tokenId] = -1;
	}
	
	numNonTerminals = unfinishedCFG.nonTerminalIds.size();
	for (int nonTerminalId = 0; nonTerminalId < numNonTerminals; nonTerminalId++) {
		nonTerminalIds[unfinishedCFG.nonTerminalTokenIds.at(nonTerminalId)] = nonTerminalId;
	}
	
	nonTerminalTokenIds = toArray<int>(unfinishedCFG.nonTerminalTokenIds);
	
	numTerminals = tokenIds.size() - numNonTerminals - (lambdaId != -1 ? 1 : 0);
	terminalIds = new int[tokenIds.size()];
	terminalTokenIds = new int[numTerminals];
	int curId = 0;
	for (unsigned int tokenId = 0; tokenId < tokenIds.size(); tokenId++) {
		if (nonTerminalIds[tokenId] == -1 && (int)tokenId != lambdaId) {
			terminalIds[tokenId] = curId;
			terminalTokenIds[curId] = tokenId;
			
			curId++;
		} else {
			terminalIds[tokenId] = -1;
		}
	}
	
	numRules = unfinishedCFG.rules.size();
	std::vector<int> rulesVec;
	std::vector<int> ruleLocationsVec;
	std::vector<std::vector<int>> nonTerminalRulesVec;
	hasLambdaRule = new bool[numNonTerminals];
	for (int nonTerminalId = 0; nonTerminalId < numNonTerminals; nonTerminalId++) {
		nonTerminalRulesVec.push_back({});
		hasLambdaRule[nonTerminalId] = false;
	}
	
	for (int ruleId = 0; ruleId < numRules; ruleId++) {
		std::vector<int> rule = unfinishedCFG.rules.at(ruleId);
		
		nonTerminalRulesVec.at(nonTerminalIds[rule.at(0)]).push_back(ruleId);
		ruleLocationsVec.push_back(rulesVec.size());
		
		rulesVec.push_back(rule.at(0));
		if (rule.at(1) == lambdaId) {
			hasLambdaRule[nonTerminalIds[rule.at(0)]] = true;
			rulesVec.push_back(0);
			continue;
		}
		
		rulesVec.push_back(rule.size() - 1);
		for (unsigned int i = 1; i < rule.size(); i++) {
			rulesVec.push_back(rule.at(i));
		}
	}
	rules = toArray<int>(rulesVec);
	ruleLocations = toArray<int>(ruleLocationsVec);
	
	nonTerminalRules = new int*[numNonTerminals];
	for (int leftNonTerminalId = 0; leftNonTerminalId < numNonTerminals; leftNonTerminalId++) {
		nonTerminalRules[leftNonTerminalId] = new int[nonTerminalRulesVec.at(leftNonTerminalId).size() + 1];
		nonTerminalRules[leftNonTerminalId][0] = nonTerminalRulesVec.at(leftNonTerminalId).size();
		
		for (unsigned int i = 0; i < nonTerminalRulesVec.at(leftNonTerminalId).size(); i++) {
			nonTerminalRules[leftNonTerminalId][i + 1] = nonTerminalRulesVec.at(leftNonTerminalId).at(i);
		}
	}
	
	generateDerivesToLambda();
	generateFirstSets();
	generateFollowSets();
	generatePredictSets();
	generateParseTable();
}

CFG::~CFG() {
	delete[] tokens;
	delete[] nonTerminalIds;
	delete[] nonTerminalTokenIds;
	delete[] terminalIds;
	delete[] terminalTokenIds;
	delete[] rules;
	delete[] ruleLocations;
	delete[] nonTerminalRules;
	delete[] hasLambdaRule;
	delete[] derivesToLambda;
	delete[] parseTable;
}

void CFG::displayParse(std::ostream& out, std::vector<std::string> processingStack) {
	if (parseTable == nullptr) {
		out << "Unable to build LL(1) parse table." << '\n';
		return;
	}
	
	std::reverse(processingStack.begin(), processingStack.end());
	std::vector<int> parseStack = {startId};
	
	while (!parseStack.empty()) {
		out << "Parse Stack: ";
		for (int i = parseStack.size() - 1; i >= 0; i--) {
			out << tokens[parseStack.at(i)] << ' ';
		}
		out << "\n";
		
		out << "Remaining Input: ";
		for (int i = processingStack.size() - 1; i >= 0; i--) {
			out << processingStack.at(i) << ' ';
		}
		out << "\n";
		
		if (parseStack.empty() || processingStack.empty()) {
			out << "Syntax Error" << '\n';
			return;
		}
		
		int parseTokenId = parseStack.back();
		parseStack.pop_back();
		std::string inputToken = processingStack.back();
		int inputTokenId = tokenIds.at(inputToken);
		
		if (nonTerminalIds[parseTokenId] == -1) {
			if (tokens[parseTokenId] != inputToken) {
				out << "Syntax Error" << '\n';
				return;
			}
			
			out << "Match" << '\n';
			processingStack.pop_back();
		} else {
			int parseTableId = nonTerminalIds[parseTokenId] * numTerminals + terminalIds[inputTokenId];
			int ruleId = parseTable[parseTableId];
			
			if (ruleId == -1) {
				out << "Syntax Error" << '\n';
				return;
			}
			
			out << "Apply rule " << (ruleId + 1) << '\n';
			
			int ruleLocation = ruleLocations[ruleId];
			for (int rightId = rules[ruleLocation + 1] - 1; rightId >= 0; rightId--) {
				parseStack.push_back(rules[ruleLocation + 2 + rightId]);
			}
		}
		
		out << '\n';
	}
}

void CFG::displayAST(std::istream& sdtProcsIn, std::ostream& out, std::istream& in) {
	std::vector<std::vector<SDTProc>> sdtProcs;
	sdtProcs.resize(numNonTerminals);
	while (true) {
		std::string sdtProcLine;
		std::getline(sdtProcsIn, sdtProcLine);
		
		if (sdtProcsIn.fail()) {
			break;
		}
		
		if (sdtProcLine.back() == '\r') {
			sdtProcLine.pop_back();
		}
		
		std::vector<std::string> sdtProcInput = split(sdtProcLine, ':');
		
		SDTProc newSDTProc(sdtProcInput.at(1), sdtProcInput.at(2));
		
		for (std::string token : split(sdtProcInput.at(0), ' ')) {
			sdtProcs.at(nonTerminalIds[tokenIds.at(token)]).push_back(newSDTProc);
		}
	}
	
	if (parseTable == nullptr) {
		out << "Unable to build LL(1) parse table." << '\n';
		return;
	}
	
	ParseNode::numIds = 0;
	ParseNode* root = new ParseNode(1, "root");
	ParseNode* curNode = root;
	std::vector<int> parseStack = {startId};
	int inputTokenId = -1;
	std::string inputTokenValue;
	bool error = false;
	
	while (true) {
		if (inputTokenId == -1) {
			std::string inputLine;
			std::getline(in, inputLine);
			
			if (in.fail()) {
				if (parseStack.empty()) {
					break;
				}
				
				inputTokenId = endId;
				inputTokenValue = tokens[endId];
			} else {
				std::vector<std::string> inputVec = split(inputLine, ' ');
				
				if (inputVec.size() == 0) {
					continue;
				}
				
				inputTokenId = tokenIds.at(inputVec.at(0));
				inputTokenValue = inputVec.size() > 1 ? inputVec.at(1) : inputVec.at(0);
			}
		}
		
		if (parseStack.empty()) {
			out << "Syntax Error" << '\n';
			error = true;
			break;
		}
		
		int parseTokenId = parseStack.back();
		parseStack.pop_back();
		
		if (nonTerminalIds[parseTokenId] == -1) {
			if (parseTokenId != inputTokenId) {
				out << "Syntax Error" << '\n';
				error = true;
				break;
			}
			
			curNode = curNode->addChild(ParseNode::create(0, inputTokenValue, inputTokenId), false);
			inputTokenId = -1;
		} else {
			int parseTableId = nonTerminalIds[parseTokenId] * numTerminals + terminalIds[inputTokenId];
			int ruleId = parseTable[parseTableId];
			
			if (ruleId == -1) {
				out << "Syntax Error" << '\n';
				error = true;
				break;
			}
			
			int ruleLocation = ruleLocations[ruleId];
			for (int rightId = rules[ruleLocation + 1] - 1; rightId >= 0; rightId--) {
				parseStack.push_back(rules[ruleLocation + 2 + rightId]);
			}
			
			if (rules[ruleLocation + 1] == 0) {
				curNode = curNode->addChild(ParseNode::create(1, tokens[parseTokenId], parseTokenId), false);
				curNode = curNode->addChild(ParseNode::create(0, tokens[lambdaId], lambdaId), false);
			} else {
				curNode = curNode->addChild(ParseNode::create(rules[ruleLocation + 1], tokens[parseTokenId], parseTokenId), false);
			}
		}
		
		while (curNode != root && curNode->numChildren == curNode->curChild) {
			ParseNode* curParent = curNode->parent;
			
			if (nonTerminalIds[curNode->tokenId] != -1) {
				for (SDTProc sdtProc : sdtProcs.at(nonTerminalIds[curNode->tokenId])) {
					sdtProc.apply(curNode, tokens);
				}
			}
			
			curNode = curParent;
		}
	}
	
	if (!error) {
		out << "Parse Tree: " << '\n';
		out << "https://dreampuf.github.io/GraphvizOnline/";
		out << "#digraph%20G%20%7B%0D%0A";
		out << *root;
		out << "%7D%0D%0A" << '\n';
	}
	
	delete root;
}

CFG::ParseNode* CFG::getAST(std::istream& sdtProcsIn, std::istream& in) {
	std::vector<std::vector<SDTProc>> sdtProcs;
	sdtProcs.resize(numNonTerminals);
	while (true) {
		std::string sdtProcLine;
		std::getline(sdtProcsIn, sdtProcLine);
		
		if (sdtProcsIn.fail()) {
			break;
		}
		
		if (sdtProcLine.back() == '\r') {
			sdtProcLine.pop_back();
		}
		
		std::vector<std::string> sdtProcInput = split(sdtProcLine, ':');
		
		SDTProc newSDTProc(sdtProcInput.at(1), sdtProcInput.at(2));
		
		for (std::string token : split(sdtProcInput.at(0), ' ')) {
			sdtProcs.at(nonTerminalIds[tokenIds.at(token)]).push_back(newSDTProc);
		}
	}
	
	if (parseTable == nullptr) {
		return nullptr;
	}
	
	ParseNode::numIds = 0;
	ParseNode* root = new ParseNode(1, "root");
	ParseNode* curNode = root;
	std::vector<int> parseStack = {startId};
	int inputTokenId = -1;
	std::string inputTokenValue;
	bool error = false;
	
	while (true) {
		if (inputTokenId == -1) {
			std::string inputLine;
			std::getline(in, inputLine);
			
			if (in.fail()) {
				if (parseStack.empty()) {
					break;
				}
				
				inputTokenId = endId;
				inputTokenValue = tokens[endId];
			} else {
				std::vector<std::string> inputVec = split(inputLine, ' ');
				
				if (inputVec.size() == 0) {
					continue;
				}
				
				inputTokenId = tokenIds.at(inputVec.at(0));
				inputTokenValue = inputVec.size() > 1 ? inputVec.at(1) : inputVec.at(0);
			}
		}
		
		if (parseStack.empty()) {
			error = true;
			break;
		}
		
		int parseTokenId = parseStack.back();
		parseStack.pop_back();
		
		if (nonTerminalIds[parseTokenId] == -1) {
			if (parseTokenId != inputTokenId) {
				error = true;
				break;
			}
			
			curNode = curNode->addChild(ParseNode::create(0, inputTokenValue, inputTokenId), false);
			inputTokenId = -1;
		} else {
			int parseTableId = nonTerminalIds[parseTokenId] * numTerminals + terminalIds[inputTokenId];
			int ruleId = parseTable[parseTableId];
			
			if (ruleId == -1) {
				error = true;
				break;
			}
			
			int ruleLocation = ruleLocations[ruleId];
			for (int rightId = rules[ruleLocation + 1] - 1; rightId >= 0; rightId--) {
				parseStack.push_back(rules[ruleLocation + 2 + rightId]);
			}
			
			if (rules[ruleLocation + 1] == 0) {
				curNode = curNode->addChild(ParseNode::create(1, tokens[parseTokenId], parseTokenId), false);
				curNode = curNode->addChild(ParseNode::create(0, tokens[lambdaId], lambdaId), false);
			} else {
				curNode = curNode->addChild(ParseNode::create(rules[ruleLocation + 1], tokens[parseTokenId], parseTokenId), false);
			}
		}
		
		while (curNode != root && curNode->numChildren == curNode->curChild) {
			ParseNode* curParent = curNode->parent;
			
			if (nonTerminalIds[curNode->tokenId] != -1) {
				for (SDTProc sdtProc : sdtProcs.at(nonTerminalIds[curNode->tokenId])) {
					sdtProc.apply(curNode, tokens);
					
					if (curNode == nullptr) {
						break;
					}
				}
			}
			
			curNode = curParent;
		}
	}
	
	if (error) {
		std::exit(2);
	}
	
	return root;
}

void CFG::displayLRParse(std::istream& parseTableIn, std::ostream& out, std::istream& in) {
	std::vector<int> parseTableColumnTokenIds;
	std::vector<std::string> parseTableVec;
	while (true) {
		std::string parseTableRow;
		std::getline(parseTableIn, parseTableRow);
		
		if (parseTableIn.fail()) {
			break;
		}
		
		if (parseTableColumnTokenIds.size() != 0) {
			parseTableVec.push_back(parseTableRow);
		} else {
			std::vector<std::string> parseTableColumns = split(parseTableRow, ' ');
			for (std::string columnToken : parseTableColumns) {
				parseTableColumnTokenIds.push_back(tokenIds.at(columnToken));
			}
		}
	}
	
	int* parseTable = new int[parseTableVec.size() * tokenIds.size()];
	
	for (unsigned int i = 0; i < parseTableVec.size() * tokenIds.size(); i++) {
		parseTable[i] = 0;
	}
	
	for (unsigned int i = 0; i < parseTableVec.size(); i++) {
		std::vector<std::string> parseTableRowVec = split(parseTableVec.at(i), ' ');
		for (unsigned int j = 0; j < parseTableRowVec.size(); j++) {
			std::string entry = parseTableRowVec.at(j);
			if (entry.at(0) == 'e') {
				continue;
			} else if (entry.at(0) == 's') {
				parseTable[i * tokenIds.size() + parseTableColumnTokenIds.at(j)] = std::stoi(entry.substr(3)) + 1;
			} else if (entry.at(0) == 'r') {
				parseTable[i * tokenIds.size() + parseTableColumnTokenIds.at(j)] = -std::stoi(entry.substr(2));
			} else {
				out << "Error reading table" << '\n';
				return;
			}
		}
	}
	
	ParseNode::numIds = 0;
	std::vector<ParseNode*> parseStack = {ParseNode::create(0, "0", 0)}; //States have a token id equal to their state value
	std::deque<ParseNode*> inputDeque;
	bool error = false;
	
	while (true) {
		if (inputDeque.empty()) {
			std::string inputLine;
			std::getline(in, inputLine);
			
			if (in.fail()) {
				inputDeque.push_back(ParseNode::create(0, tokens[endId], endId));
			} else {
				std::vector<std::string> inputVec = split(inputLine, ' ');
				
				if (inputVec.size() == 0) {
					continue;
				}
				
				std::string inputValue = inputVec.size() > 1 ? inputVec.at(1) : inputVec.at(0);
				int inputTokenId = tokenIds.at(inputVec.at(0));
				inputDeque.push_back(ParseNode::create(0, inputValue, inputTokenId));
			}
		}
		
		int inputTokenId = inputDeque.front()->tokenId;
		int entry = parseTable[parseStack.back()->tokenId * tokenIds.size() + inputTokenId];
		
		if (entry == 0) {
			out << "Syntax Error" << '\n';
			error = true;
			break;
		} else if (entry > 0) {
			out << "Shift and go to state " << (entry - 1) << '\n';
			
			ParseNode* stateNode = ParseNode::create(1, std::to_string(entry - 1), entry - 1);
			stateNode->addChild(inputDeque.front());
			
			if (stateNode->tokenId >= (int)parseTableVec.size()) {
				out << "Syntax Error" << '\n';
				error = true;
				break;
			}
			
			parseStack.push_back(stateNode);
			inputDeque.pop_front();
		} else {
			out << "Reduce with rule " << -entry << '\n';
			
			int ruleId = -(entry + 1);
			
			if (ruleId >= numRules) {
				out << "Syntax Error" << '\n';
				error = true;
				break;
			}
			
			int ruleLocation = ruleLocations[ruleId];
			ParseNode* newNode = nullptr;
			
			if (rules[ruleLocation + 1] == 0) {
				newNode = ParseNode::create(1, tokens[rules[ruleLocation]], rules[ruleLocation]);
				newNode->addChild(ParseNode::create(0, tokens[lambdaId], lambdaId));
			} else {
				newNode = ParseNode::create(rules[ruleLocation + 1], tokens[rules[ruleLocation]], rules[ruleLocation]);
			}
			inputDeque.push_front(newNode);
			
			std::vector<ParseNode*> children;
			for (int i = 0; i < rules[ruleLocation + 1]; i++) {
				ParseNode* childStateNode = parseStack.back();
				parseStack.pop_back();
				
				children.push_back(childStateNode->children[0]);
				
				childStateNode->children[0] = nullptr;
				delete childStateNode;
			}
			
			for (int i = children.size() - 1; i >= 0; i--) {
				newNode->addChild(children.at(i));
			}
			
			for (int rightId = 0; rightId < rules[ruleLocation + 1]; rightId++) {
				if (rules[ruleLocation + 2 + rightId] != children.back()->tokenId) {
					out << "Syntax Error" << '\n';
					error = true;
					break;
				}
				
				children.pop_back();
			}
			
			if (error) {
				break;
			}
			
			if (rules[ruleLocation] == startId) {
				break;
			}
		}
	}
	
	if (!error) {
		out << "Parse Tree: " << '\n';
		out << "https://dreampuf.github.io/GraphvizOnline/";
		out << "#digraph%20G%20%7B%0D%0A";
		out << *inputDeque.front();
		out << "%7D%0D%0A" << '\n';
	}
	
	for (ParseNode* node : parseStack) {
		delete node;
	}
	for (ParseNode* node : inputDeque) {
		delete node;
	}
	
	delete[] parseTable;
}

void CFG::findParseTree(std::ostream& out, std::istream& in) {
	if (parseTable == nullptr) {
		out << "Unable to build LL(1) parse table." << '\n';
		return;
	}
	
	ParseNode::numIds = 0;
	ParseNode* root = new ParseNode(1, "root");
	ParseNode* curNode = root;
	std::vector<int> parseStack = {startId};
	int inputTokenId = -1;
	std::string inputTokenValue;
	bool addedEndMarker = false;
	bool error = false;
	
	while (true) {
		if (inputTokenId == -1) {
			std::string inputLine;
			std::getline(in, inputLine);
			
			if (in.fail() && addedEndMarker) {
				if (parseStack.empty()) {
					break;
				}
				
				out << "Syntax Error" << '\n';
				error = true;
				break;
			} else if (in.fail()) {
				inputTokenId = endId;
				inputTokenValue = tokens[endId];
				addedEndMarker = true;
			} else {
				std::vector<std::string> inputVec = split(inputLine, ' ');
				
				if (inputVec.size() == 0) {
					continue;
				}
				
				inputTokenId = tokenIds.at(inputVec.at(0));
				inputTokenValue = inputVec.size() > 1 ? inputVec.at(1) : inputVec.at(0);
			}
		}
		
		if (parseStack.empty()) {
			out << "Syntax Error" << '\n';
			error = true;
			break;
		}
		
		int parseTokenId = parseStack.back();
		parseStack.pop_back();
		
		if (nonTerminalIds[parseTokenId] == -1) {
			if (parseTokenId != inputTokenId) {
				out << "Syntax Error" << '\n';
				error = true;
				break;
			}
			
			curNode = curNode->addChild(new ParseNode(0, inputTokenValue));
			inputTokenId = -1;
		} else {
			int parseTableId = nonTerminalIds[parseTokenId] * numTerminals + terminalIds[inputTokenId];
			int ruleId = parseTable[parseTableId];
			
			if (ruleId == -1) {
				out << "Syntax Error" << '\n';
				error = true;
				break;
			}
			
			int ruleLocation = ruleLocations[ruleId];
			for (int rightId = rules[ruleLocation + 1] - 1; rightId >= 0; rightId--) {
				parseStack.push_back(rules[ruleLocation + 2 + rightId]);
			}
			
			if (rules[ruleLocation + 1] == 0) {
				curNode = curNode->addChild(new ParseNode(1, tokens[parseTokenId]));
				curNode = curNode->addChild(new ParseNode(0, tokens[lambdaId]));
			} else {
				curNode = curNode->addChild(new ParseNode(rules[ruleLocation + 1], tokens[parseTokenId]));
			}
		}
	}
	
	if (!error) {
		out << "Parse Tree: " << '\n';
		out << "https://dreampuf.github.io/GraphvizOnline/";
		out << "#digraph%20G%20%7B%0D%0A";
		out << *root;
		out << "%7D%0D%0A" << '\n';
	}
	
	delete root;
}

std::ostream& operator<<(std::ostream& out, const CFG& cfg) {
	out << "Grammar Non-Terminals" << "\n";
	
	for (int nonTerminalId = 0; nonTerminalId < cfg.numNonTerminals; nonTerminalId++) {
		out << cfg.tokens[cfg.nonTerminalTokenIds[nonTerminalId]] << (nonTerminalId < cfg.numNonTerminals - 1 ? ", " : "\n");
	}
	out << "\n";
	
	out << "Grammar Symbols" << "\n";
	
	for (unsigned int tokenId = 0; tokenId < cfg.tokenIds.size(); tokenId++) {
		if ((int)tokenId == cfg.lambdaId) {
			continue;
		}
		
		out << cfg.tokens[tokenId] << (tokenId < cfg.tokenIds.size() - 1 ? ", " : "\n");
	}
	
	out << "\n";
	
	out << "Grammar Rules" << "\n";
	
	out << std::left;
	int padding = 1 + std::to_string(cfg.numRules).size() + 1 + 1;
	for (int ruleId = 0; ruleId < cfg.numRules; ruleId++) {
		int ruleLocation = cfg.ruleLocations[ruleId];
		
		out.width(padding);
		out << ("(" + std::to_string(ruleId + 1) + ")");
		out << cfg.tokens[cfg.rules[ruleLocation]] << " -> ";
		
		if (cfg.rules[ruleLocation + 1] == 0) {
			out << cfg.tokens[cfg.lambdaId];
		}
		
		for (int rightId = 0; rightId < cfg.rules[ruleLocation + 1]; rightId++) {
			out << cfg.tokens[cfg.rules[ruleLocation + 2 + rightId]] << " ";
		}
		
		out << "\n";
	}
	out << "\n";
	
	out << "Grammar Start Symbol or Goal: " << cfg.tokens[cfg.startId] << "\n";
	
	out << "\n";
	
	out << "Non-Terminal Properties" << "\n";
	
	unsigned int maxNonTerminalLength = 0;
	for (int nonTerminalId = 0; nonTerminalId < cfg.numNonTerminals; nonTerminalId++) {
		if (cfg.tokens[cfg.nonTerminalTokenIds[nonTerminalId]].size() > maxNonTerminalLength) {
			maxNonTerminalLength = cfg.tokens[cfg.nonTerminalTokenIds[nonTerminalId]].size();
		}
	}
	
	padding = 1 + maxNonTerminalLength + 1 + 1;
	
	for (int nonTerminalId = 0; nonTerminalId < cfg.numNonTerminals; nonTerminalId++) {
		out << "DerivesToLambda";
		out.width(padding);
		out << ("(" + cfg.tokens[cfg.nonTerminalTokenIds[nonTerminalId]] + ")");
		out << (cfg.derivesToLambda[nonTerminalId] ? "true" : "false") << "\n";
	}
	
	out << "\n";
	
	for (int nonTerminalId = 0; nonTerminalId < cfg.numNonTerminals; nonTerminalId++) {
		out << "First";
		out.width(padding);
		out << ("(" + cfg.tokens[cfg.nonTerminalTokenIds[nonTerminalId]] + ")");
		for (unsigned int i = 0; i < cfg.firstSets.at(nonTerminalId).size(); i++) {
			out << cfg.tokens[cfg.firstSets.at(nonTerminalId).at(i)] << (i < cfg.firstSets.at(nonTerminalId).size() - 1 ? ", " : "");
		}
		out << "\n";
	}
	
	out << "\n";
	
	for (int nonTerminalId = 0; nonTerminalId < cfg.numNonTerminals; nonTerminalId++) {
		out << "Follow";
		out.width(padding);
		out << ("(" + cfg.tokens[cfg.nonTerminalTokenIds[nonTerminalId]] + ")");
		for (unsigned int i = 0; i < cfg.followSets.at(nonTerminalId).size(); i++) {
			out << cfg.tokens[cfg.followSets.at(nonTerminalId).at(i)] << (i < cfg.followSets.at(nonTerminalId).size() - 1 ? ", " : "");
		}
		out << "\n";
	}
	
	out << "\n";
	
	padding = 1 + std::to_string(cfg.numRules).size() + 1 + 1;
	for (int ruleId = 0; ruleId < cfg.numRules; ruleId++) {
		out << "Predict";
		out.width(padding);
		out << ("(" + std::to_string(ruleId + 1) + ")");
		for (unsigned int i = 0; i < cfg.predictSets.at(ruleId).size(); i++) {
			out << cfg.tokens[cfg.predictSets.at(ruleId).at(i)] << (i < cfg.predictSets.at(ruleId).size() - 1 ? ", " : "");
		}
		out << "\n";
	}
	
	out << "\n";
	
	if (cfg.parseTable != nullptr) {
		out << "Parse Table" << "\n";
		
		std::vector<int> paddings;
		paddings.push_back(maxNonTerminalLength + 1 + 1);
		for (int terminalId = 0; terminalId < cfg.numTerminals; terminalId++) {
			paddings.push_back(std::max(cfg.tokens[cfg.terminalTokenIds[terminalId]].size(), std::to_string(cfg.numRules).size()) + 1);
		}
		
		out.width(paddings.at(0));
		out << "";
		for (int terminalId = 0; terminalId < cfg.numTerminals; terminalId++) {
			out.width(paddings.at(terminalId + 1));
			out << cfg.tokens[cfg.terminalTokenIds[terminalId]];
		}
		out << "\n";
		
		for (int nonTerminalId = 0; nonTerminalId < cfg.numNonTerminals; nonTerminalId++) {
			out.width(paddings.at(0));
			out << cfg.tokens[cfg.nonTerminalTokenIds[nonTerminalId]] + ":";
			for (int terminalId = 0; terminalId < cfg.numTerminals; terminalId++) {
				int ruleId = cfg.parseTable[nonTerminalId * cfg.numTerminals + terminalId];
				out.width(paddings.at(terminalId + 1));
				out << (ruleId == -1 ? "" : std::to_string(ruleId + 1));
			}
			out << "\n";
		}
	} else {
		out << "Could not generate parse table with LL(1)" << "\n";
	}
	
	return out;
}

CFG::ParseNode::ParseNode(int numChildren, std::string value) {
	this->numChildren = numChildren;
	this->children = (numChildren == 0) ? nullptr : new ParseNode*[numChildren];
	this->value = value;
}

CFG::ParseNode::~ParseNode() {
	for (int i = 0; i < curChild; i++) {
		delete children[i];
	}
	
	delete[] children;
}

CFG::ParseNode* CFG::ParseNode::addChild(ParseNode* child, bool propagate) {
	children[curChild] = child;
	curChild++;
	child->parent = this;
	
	ParseNode* curNode = child;
	
	if (propagate) {
		while (curNode != nullptr && curNode->numChildren == curNode->curChild) {
			curNode = curNode->parent;
		}
	}
	
	return curNode;
}

int CFG::ParseNode::getChildIndex(ParseNode* child) {
	for (int i = 0; i < numChildren; i++) {
		if (children[i] == child) {
			return i;
		}
	}
	
	return -1;
}

CFG::ParseNode* CFG::ParseNode::clone() {
	ParseNode* newNode = create(numChildren, value, tokenId);
	newNode->parent = parent;
	
	for (int i = 0; i < curChild; i++) {
		newNode->addChild(children[i]->clone());
	}
	
	return newNode;
}

CFG::ParseNode* CFG::ParseNode::create(int numChildren, std::string value, int tokenId) {
	ParseNode* newNode = new ParseNode(numChildren, value);
	newNode->tokenId = tokenId;
	
	return newNode;
}

std::ostream& operator<<(std::ostream& out, const CFG::ParseNode& node) {
	out << "%20%20%20%20" << node.id << toURI(" [label=\"" + node.value + "\"];" + '\n');
	
	for (int i = 0; i < node.curChild; i++) {
		out << "%20%20%20%20" << node.id << "%20%2D%3E%20" << node.children[i]->id << "%3B%0D%0A";
		
		out << *node.children[i];
	}
	
	return out;
}

CFG::SDTProc::SDTProc(std::string conditionsLine, std::string operationsLine) {
	for (std::string conditionLine : split(conditionsLine, ' ')) {
		std::vector<std::string> sides = split(conditionLine,'=');
		conditions.push_back({sides.at(0),sides.at(1)});
	}
	
	for (std::string operationLine : split(operationsLine, ' ')) {
		operations.push_back(Operation(operationLine));
	}
}

void CFG::SDTProc::apply(ParseNode*& node, std::string* tokens) const {
	for (std::pair<std::string, std::string> condition : conditions) {
		bool checkToken = false; 
		std::string targetStr = condition.first;
		if (targetStr.back() == '?') {
			targetStr.pop_back();
			checkToken = true;
		}
		
		std::vector<ParseNode*> targets = interpretPath(targetStr, node);
		
		if (targets.size() == 0 && condition.second != "null") {
			return;
		}
		
		for (ParseNode* target : targets) {
			if (checkToken && tokens[target->tokenId] != condition.second) {
				return;
			} else if (!checkToken && target->value != condition.second) {
				return;
			}
		}
	}
	
	for (Operation operation : operations) {
		operation.apply(node);
		
		if (node == nullptr) {
			return;
		}
	}
}

CFG::SDTProc::Operation::Operation(std::string operationLine) {
	std::vector<std::string> parts = split(operationLine, '-');
	caller = parts.at(0);
	type = parts.at(1);
	
	if (parts.size() == 3) {
		targets = split(parts.at(2), ',');
	}
}

void CFG::SDTProc::Operation::apply(ParseNode*& node) const {
	ParseNode* callerNode = interpretPath(caller, node).at(0);
	
	if (type == "rename") {
		callerNode->value = targets.at(0);
		return;
	}
	
	std::vector<ParseNode*> targetNodes;
	
	for (std::string target : targets) {
		std::vector<ParseNode*> newTargetNodes = interpretPath(target, node);
		
		for (ParseNode* targetNode : newTargetNodes) {
			if (std::find(targetNodes.begin(), targetNodes.end(), targetNode) == targetNodes.end()) {
				targetNodes.push_back(targetNode);
			}
		}
	}
	
	ParseNode* callerParent = callerNode->parent;
	if (type == "replace") {
		int replaceIndex = callerParent->getChildIndex(callerNode);
		
		ParseNode** oldChildren = callerParent->children;
		
		callerParent->numChildren += targetNodes.size() - 1;
		callerParent->curChild += targetNodes.size() - 1;
		callerParent->children = new ParseNode*[callerParent->numChildren];
		for (int i = 0; i < callerParent->curChild; i++) {
			if (i < replaceIndex) {
				callerParent->children[i] = oldChildren[i];
			} else if (i < replaceIndex + (int)targetNodes.size()) {
				callerParent->children[i] = targetNodes.at(i - replaceIndex)->clone();
				callerParent->children[i]->parent = callerParent;
			} else {
				callerParent->children[i] = oldChildren[i - (targetNodes.size() - 1)];
			}
		}
		
		if (callerNode == node) {
			node = nullptr;
		}
		
		delete oldChildren;
		delete callerNode;
	} else if (type == "swap") {
		int callerChildIndex = callerParent->getChildIndex(callerNode);
		int targetChildIndex = targetNodes.at(0)->parent->getChildIndex(targetNodes.at(0));
		
		callerParent->children[callerChildIndex] = targetNodes.at(0);
		targetNodes.at(0)->parent->children[targetChildIndex] = callerNode;
		
		callerNode->parent = targetNodes.at(0)->parent;
		targetNodes.at(0)->parent = callerParent;
		
		if (callerNode == node) {
			node = targetNodes.at(0);
		}
	}
}

std::vector<CFG::ParseNode*> CFG::SDTProc::interpretPath(std::string pathLine, ParseNode* sourceNode) {
	std::vector<std::string> path = split(pathLine, '.');
	std::vector<ParseNode*> currents = {sourceNode};
	for (std::string movement : path) {
		int childIndex;
		
		if (movement == "self") {
			continue;
		} else if (movement == "last") {
			childIndex = -2;
		} else if (movement == "*") {
			childIndex = -1;
		} else {
			childIndex = std::stoi(movement);
		}
		
		std::vector<ParseNode*> newCurrents;
		for (ParseNode* node : currents) {
			if (node == nullptr) {
				continue;
			}
			
			if (childIndex == -2 && node->curChild > 0) {
				newCurrents.push_back(node->children[node->curChild - 1]);
			} else if (childIndex == -1) {
				for (int i = 0; i < node->numChildren; i++) {
					newCurrents.push_back(node->children[i]);
				}
			} else if (childIndex < node->curChild) {
				newCurrents.push_back(node->children[childIndex]);
			}
		}
		
		currents = newCurrents;
	}
	
	std::vector<ParseNode*> newCurrents;
	for (ParseNode* node : currents) {
		if (node != nullptr) {
			newCurrents.push_back(node);
		}
	}
	currents = newCurrents;
	
	return currents;
}

void CFG::generateDerivesToLambda() {
	derivesToLambda = new bool[numNonTerminals];
	
	for (int nonTerminalId = 0; nonTerminalId < numNonTerminals; nonTerminalId++) {
		derivesToLambda[nonTerminalId] = false;
	}
	
	while (true) {
		int newDerives = 0;
		
		for (int nonTerminalId = 0; nonTerminalId < numNonTerminals; nonTerminalId++) {
			if (derivesToLambda[nonTerminalId]) {
				continue;
			}
			
			derivesToLambdaHelper(nonTerminalId);
			
			if (derivesToLambda[nonTerminalId]) {
				newDerives++;
			}
		}
		
		if (newDerives == 0) {
			break;
		}
	}
}

void CFG::derivesToLambdaHelper(int nonTerminalId) {
	if (hasLambdaRule[nonTerminalId]) {
		derivesToLambda[nonTerminalId] = true;
		return;
	}
	
	for (int i = 0; i < nonTerminalRules[nonTerminalId][0]; i++) {
		if (allDeriveToLambda(nonTerminalRules[nonTerminalId][i + 1])) {
			derivesToLambda[nonTerminalId] = true;
			break;
		}
	}
}

bool CFG::allDeriveToLambda(int ruleId) const {
	bool allLambda = true;
	
	int ruleLocation = ruleLocations[ruleId];
	for (int rightId = 0; rightId < rules[ruleLocation + 1]; rightId++) {
		if (nonTerminalIds[rules[ruleLocation + 2 + rightId]] != -1) {
			if (!derivesToLambda[nonTerminalIds[rules[ruleLocation + 2 + rightId]]]) {
				allLambda = false;
				break;
			}
		} else {
			allLambda = false;
			break;
		}
	}
	
	return allLambda;
}

void CFG::generateFirstSets() {
	firstSets.reserve(numNonTerminals);
	
	for (int nonTerminalId = 0; nonTerminalId < numNonTerminals; nonTerminalId++) {
		firstSets.push_back(firstSetHelper(nonTerminalId));
	}
}

std::vector<int> CFG::firstSetHelper(int nonTerminalId, std::vector<int> path) {
	if (std::find(path.begin(), path.end(), nonTerminalId) != path.end()) {
		return {};
	}
	
	std::vector<int> firstSet;
	path.push_back(nonTerminalId);
	for (int i = 0; i < nonTerminalRules[nonTerminalId][0]; i++) {
		int ruleLocation = ruleLocations[nonTerminalRules[nonTerminalId][1 + i]];
		for (int rightId = 0; rightId < rules[ruleLocation + 1]; rightId++) {
			int tokenId = rules[ruleLocation + 2 + rightId];
			
			if (nonTerminalIds[tokenId] != -1) {
				std::vector<int> addedSet;
				if (nonTerminalIds[tokenId] < (int)firstSets.size()) {
					addedSet = firstSets.at(nonTerminalIds[tokenId]);
				} else {
					addedSet = firstSetHelper(nonTerminalIds[tokenId], path);
				}
				
				std::vector<int> newFirstSet;
				std::set_union(firstSet.begin(), firstSet.end(), addedSet.begin(), addedSet.end(), std::back_inserter(newFirstSet));
				firstSet = newFirstSet;
				
				if (!derivesToLambda[nonTerminalIds[tokenId]]) {
					break;
				}
			} else {
				if (!std::binary_search(firstSet.begin(), firstSet.end(), tokenId)) {
					firstSet.insert(std::lower_bound(firstSet.begin(), firstSet.end(), tokenId), tokenId);
				}
				
				break;
			}
		}
	}
	
	return firstSet;
}

void CFG::generateFollowSets() {
	followSets.reserve(numNonTerminals);
	
	for (int nonTerminalId = 0; nonTerminalId < numNonTerminals; nonTerminalId++) {
		followSets.push_back(followSetHelper(nonTerminalId));
	}
}

std::vector<int> CFG::followSetHelper(int nonTerminalId, std::vector<int> path) {
	if (std::find(path.begin(), path.end(), nonTerminalId) != path.end()) {
		return {};
	}
	
	std::vector<int> followSet;
	path.push_back(nonTerminalId);
	for (int ruleId = 0; ruleId < numRules; ruleId++) {
		int ruleLocation = ruleLocations[ruleId];
		
		for (int rightId = 0; rightId < rules[ruleLocation + 1]; rightId++) {
			if (nonTerminalIds[rules[ruleLocation + 2 + rightId]] != nonTerminalId) {
				continue;
			}
			
			bool keepFollowing = false;
			for (int followId = rightId + 1; followId <= rules[ruleLocation + 1]; followId++) {
				if (followId == rules[ruleLocation + 1]) {
					keepFollowing = true;
					break;
				}
				
				int tokenId = rules[ruleLocation + 2 + followId];
				
				if (nonTerminalIds[tokenId] == -1) {
					if (!std::binary_search(followSet.begin(), followSet.end(), tokenId)) {
						followSet.insert(std::lower_bound(followSet.begin(), followSet.end(), tokenId), tokenId);
					}
					
					break;
				} else {
					std::vector<int> addedSet = firstSets.at(nonTerminalIds[tokenId]);
					
					std::vector<int> newFollowSet;
					std::set_union(followSet.begin(), followSet.end(), addedSet.begin(), addedSet.end(), std::back_inserter(newFollowSet));
					followSet = newFollowSet;
					
					if (!derivesToLambda[nonTerminalIds[tokenId]]) {
						break;
					}
				}
			}
			
			if (keepFollowing) {
				std::vector<int> addedSet;
				if (nonTerminalIds[rules[ruleLocation]] < (int)followSets.size()) {
					addedSet = followSets.at(nonTerminalIds[rules[ruleLocation]]);
				} else {
					addedSet = followSetHelper(nonTerminalIds[rules[ruleLocation]], path);
				}
					
				std::vector<int> newFollowSet;
				std::set_union(followSet.begin(), followSet.end(), addedSet.begin(), addedSet.end(), std::back_inserter(newFollowSet));
				followSet = newFollowSet;
			}
		}
	}
	
	return followSet;
}

void CFG::generatePredictSets() {
	predictSets.reserve(numRules);
	
	for (int ruleId = 0; ruleId < numRules; ruleId++) {
		int ruleLocation = ruleLocations[ruleId];
		std::vector<int> predictSet;
		std::vector<int> firstSet;
		
		bool allLambda = true;
		for (int rightId = 0; rightId < rules[ruleLocation + 1]; rightId++) {
			int tokenId = rules[ruleLocation + 2 + rightId];
			
			if (nonTerminalIds[tokenId] != -1) {
				std::vector<int> addedSet = firstSets.at(nonTerminalIds[tokenId]);
				
				std::vector<int> newFirstSet;
				std::set_union(firstSet.begin(), firstSet.end(), addedSet.begin(), addedSet.end(), std::back_inserter(newFirstSet));
				firstSet = newFirstSet;
				
				if (!derivesToLambda[nonTerminalIds[tokenId]]) {
					allLambda = false;
					break;
				}
			} else {
				if (!std::binary_search(firstSet.begin(), firstSet.end(), tokenId)) {
					firstSet.insert(std::lower_bound(firstSet.begin(), firstSet.end(), tokenId), tokenId);
				}
				
				allLambda = false;
				break;
			}
		}
		
		if (allLambda) {
			int leftNonTerminalId = nonTerminalIds[rules[ruleLocation]];
			std::set_union(firstSet.begin(), firstSet.end(), followSets.at(leftNonTerminalId).begin(), followSets.at(leftNonTerminalId).end(), std::back_inserter(predictSet));
		} else {
			predictSet = firstSet;
		}
		
		predictSets.push_back(predictSet);
	}
}

void CFG::generateParseTable() {
	parseTable = new int[numNonTerminals * numTerminals];
	
	for (int nonTerminalId = 0; nonTerminalId < numNonTerminals; nonTerminalId++) {
		for (int terminalId = 0; terminalId < numTerminals; terminalId++) {
			parseTable[nonTerminalId * numTerminals + terminalId] = -1;
		}
	}
	
	for (int ruleId = 0; ruleId < numRules; ruleId++) {
		int ruleLocation = ruleLocations[ruleId];
		
		for (int tokenId : predictSets.at(ruleId)) {
			int parseTableIndex = nonTerminalIds[rules[ruleLocation]] * numTerminals + terminalIds[tokenId];
			
			if (parseTable[parseTableIndex] != -1) {
				delete[] parseTable;
				parseTable = nullptr;
				return;
			}
			
			parseTable[parseTableIndex] = ruleId;
		}
	}
}