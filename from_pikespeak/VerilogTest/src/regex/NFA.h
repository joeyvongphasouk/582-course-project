#ifndef NFA_H
#define NFA_H

#include <ostream>
#include <string>
#include <vector>

#include "DFA.h"

class NFA {
public:
	NFA(int numStates, char lambda, std::string alphabet);
	
	void setAccepting(int stateId, bool accepting);
	
	void addTransition(int sourceId, int destId, char transition);
	
	int addState();
	
	void clear();
	
	void display(std::ostream& out);
	
	friend std::ostream& operator<<(std::ostream& out, const NFA& nfa);
	
	explicit operator DFA*() const;
private:
	struct State {
		struct Transition {
			char transition;
			int destId;
		};
		
		static bool transitionCompare(const char& left, const char& right, const char first);
		
		bool accepting = false;
		std::vector<Transition> transitions;
	};
	
	std::vector<State> states;
	char lambda;
	std::string alphabet;
	
	bool getAccepting(std::vector<int> stateSet) const;
	
	std::vector<int> getSources(std::vector<int> stateSet) const;
	
	std::vector<int> getDestinations(std::vector<int> stateSet, char transition) const;
};

#endif