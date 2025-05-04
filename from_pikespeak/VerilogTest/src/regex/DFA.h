#ifndef DFA_H
#define DFA_H

#include <ostream>
#include <string>
#include <vector>

class DFA {
public:
	DFA(int numStates, std::string alphabet);
	
	DFA(const DFA& dfa) = delete;
	
	DFA& operator=(DFA& otherDFA) = delete;
	
	~DFA();
	
	int getSize() const;
	
	std::string getAlphabet() const;
	
	bool getAccepting(int stateId) const;
	
	void setAccepting(int stateId, bool accepting);
	
	int getTransition(int stateId, char transition) const;
	
	int getTransition(int stateId, int transition) const;
	
	void setTransition(int sourceId, int destId, char transition);
	
	void setTransition(int sourceId, int destId, int transition);
	
	int match(std::string& token, int tokenIndex = 0, int stateId = 0);
	
	void optimize();
	
	void display(std::ostream& out);
private:
	int numStates;
	bool* acceptingArr;
	bool* activeArr;
	int* transitionTable;
	std::string alphabet;
	
	void mergeStates();
	
	void removeDeadStates();
	
	void cleanup();
};

std::ostream& operator<<(std::ostream& out, const DFA& dfa);

#endif