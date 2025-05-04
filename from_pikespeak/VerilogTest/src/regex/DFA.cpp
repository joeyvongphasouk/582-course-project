#include <algorithm>
#include <ostream>
#include <stack>
#include <string>
#include <utility>
#include <vector>
#include <unordered_set>

#include "DFA.h"

#include "utilities.h"

DFA::DFA(int numStates, std::string alphabet) {
	this->numStates = numStates;
	
	this->acceptingArr = new bool[numStates];
	this->activeArr = new bool[numStates];
	for (int i = 0; i < numStates; i++) {
		this->acceptingArr[i] = false;
		this->activeArr[i] = true;
	}
	
	int tableSize = numStates * alphabet.size();
	this->transitionTable = new int[tableSize];
	for (int i = 0; i < tableSize; i++) {
		this->transitionTable[i] = -1;
	}
	
	this->alphabet = alphabet;
}

DFA::~DFA() {
	delete[] acceptingArr;
	delete[] activeArr;
	delete[] transitionTable; 
}

int DFA::getSize() const {
	return numStates;
}
	
std::string DFA::getAlphabet() const {
	return alphabet;
}

bool DFA::getAccepting(int stateId) const{
	return acceptingArr[stateId];
}

void DFA::setAccepting(int stateId, bool accepting) {
	acceptingArr[stateId] = accepting;
}

int DFA::getTransition(int stateId, char transition) const {
	return getTransition(stateId, (int)alphabet.find(transition));
}
	
int DFA::getTransition(int stateId, int transition) const {
	return transitionTable[stateId * alphabet.size() + transition];
}

void DFA::setTransition(int sourceId, int destId, char transition) {
	setTransition(sourceId, destId, (int)alphabet.find(transition));
}

void DFA::setTransition(int sourceId, int destId, int transition) {
	transitionTable[sourceId * alphabet.size() + transition] = destId;
}

int DFA::match(std::string& token, int tokenIndex, int stateId) {
	if (tokenIndex == (int)token.size()) {
		return acceptingArr[stateId] ? -1 : (token.size() == 0 ? tokenIndex : tokenIndex + 1);
	}
	
	int transition = alphabet.find(token.at(tokenIndex));
	if (transition == -1 || getTransition(stateId, transition) == -1) {
		return tokenIndex + 1;
	} else {
		return match(token, tokenIndex + 1, getTransition(stateId, transition));
	}
}

void DFA::optimize() {
	mergeStates();
	
	removeDeadStates();
}

void DFA::display(std::ostream& out) {
	out << "DFA: " << '\n';
	out << "https://dreampuf.github.io/GraphvizOnline/";
	out << "#digraph%20G%20%7B%0D%0A";
	
	for (int stateId = 0; stateId < numStates; stateId++) {
		out << "%20%20%20%20" << stateId << toURI(" [shape=");
		
		if (getAccepting(stateId)) {
			out << toURI("double");
		}
		
		out << toURI("circle];\n");
		
		for (int characterId = 0; characterId < (int)alphabet.size(); characterId++) {
			if (getTransition(stateId, characterId) != -1) {
				out << "%20%20%20%20" << stateId << "%20%2D%3E%20" << getTransition(stateId, characterId);
				out << toURI(" [label=") << toURI(toAlphabetEncoding(alphabet.at(characterId))) << toURI("];\n");
			}
		}
	}
	
	out << "%7D%0D%0A" << '\n';
}

void DFA::mergeStates() {
	std::vector<std::vector<int>> P = {{}, {}}, W = {{}, {}};
	for (int stateId = 0; stateId < numStates; stateId++) {
		if (!activeArr[stateId]) {
			continue;
		}
		
		if (acceptingArr[stateId]) {
			P[0].push_back(stateId);
			W[0].push_back(stateId);
		} else {
			P[1].push_back(stateId);
			W[1].push_back(stateId);
		}
	}
	
	if (P[1].empty()) {
		P.pop_back();
		W.pop_back();
	}
	
	while (!W.empty()) {
		std::vector<int> A = W.back();
		W.pop_back();
		
		for (int characterId = 0; characterId < (int)alphabet.size(); characterId++) {
			std::unordered_set<int> X;
			for (int originId = 0; originId < numStates; originId++) {
				int destinationId = getTransition(originId, characterId);
				if (destinationId != -1 && find(A.begin(), A.end(), destinationId) != A.end()) {
					X.emplace(originId);
				}
			}
			
			int numReplaced = 0;
			for (unsigned int PIndex = 0; PIndex < P.size() - numReplaced; PIndex++) {
				std::vector<int> intersect, setDifference;
				for (const int stateId : P[PIndex]) {
					if (X.find(stateId) != X.end()) {
						intersect.push_back(stateId);
					} else {
						setDifference.push_back(stateId);
					}
				}
				
				if (intersect.empty() || setDifference.empty()) {
					continue;
				}
				
				std::vector<std::vector<int>>::iterator WIndex = find(W.begin(), W.end(), P[PIndex]);
				if (WIndex != W.end()) {
					*WIndex = intersect;
					W.push_back(setDifference);
				} else if (intersect.size() <= setDifference.size()) {
					W.push_back(intersect);
				} else {
					W.push_back(setDifference);
				}
				
				P[PIndex] = intersect;
				P.push_back(setDifference);
				numReplaced++;
			}
		}
	}
	
	for (const std::vector<int>& stateSet : P) {
		for (unsigned int i = 0; i < stateSet.size() - 1; i++) {
			activeArr[stateSet.at(i)] = false;
		}
	}
	
	for (std::vector<int>& stateSet : P) {
		int newStateId = stateSet.back();
		stateSet.pop_back();
		
		auto replace = [stateSet](int stateId) {
			return find(stateSet.begin(), stateSet.end(), stateId) != stateSet.end();
		};
		
		for (int stateId = 0; stateId < numStates; stateId++) {
			if (activeArr[stateId]) {
				for (int colNum = 0; colNum < (int)alphabet.size(); colNum++) {
					if (replace(getTransition(stateId, colNum))) {
						setTransition(stateId, newStateId, colNum);
					}
				}
			}
		}
	}
	
	cleanup();
}

void DFA::removeDeadStates() {
	std::vector<int> potentialDeadStates;
	for (int stateId = 0; stateId < numStates; stateId++) {
		if (!acceptingArr[stateId]) {
			potentialDeadStates.push_back(stateId);
			activeArr[stateId] = false;
		}
	}
	
	while (true) {
		int numActivated = 0;
		
		for (unsigned int i = 0; i < potentialDeadStates.size(); i++) {
			for (int colNum = 0; colNum < (int)alphabet.size(); colNum++) {
				int stateId = potentialDeadStates.at(i);
				int destId = getTransition(stateId, colNum);
				
				if (destId != -1 && activeArr[destId]) {
					activeArr[stateId] = true;
					numActivated++;
					
					potentialDeadStates.erase(potentialDeadStates.begin() + i);
					i--;
					break;
				}
			}
		}
		
		if (numActivated == 0) {
			break;
		}
	}
	
	cleanup();
}

void DFA::cleanup() {
	int* newStateIds = new int[numStates];
	
	int newNumStates = 0;
	for (int stateId = 0; stateId < numStates; stateId++) {
		if (activeArr[stateId]) {
			newStateIds[stateId] = newNumStates;
			newNumStates++;
		} else {
			newStateIds[stateId] = -1;
		}
	}
	
	bool* newAcceptingArr = new bool[newNumStates];
	int* newTransitionTable = new int[newNumStates * alphabet.size()];
	for (int stateId = 0; stateId < numStates; stateId++) {
		if (activeArr[stateId]) {
			newAcceptingArr[newStateIds[stateId]] = acceptingArr[stateId];
			
			for (int colNum = 0; colNum < (int)alphabet.size(); colNum++) {
				if (getTransition(stateId, colNum) != -1) {
					newTransitionTable[newStateIds[stateId] * alphabet.size() + colNum] = newStateIds[getTransition(stateId, colNum)];
				} else {
					newTransitionTable[newStateIds[stateId] * alphabet.size() + colNum] = -1;
				}
			}
		}
	}
	
	numStates = newNumStates;
	delete[] acceptingArr;
	acceptingArr = newAcceptingArr;
	delete[] transitionTable;
	transitionTable = newTransitionTable;
	
	delete[] activeArr;
	activeArr = new bool[newNumStates];
	for (int stateId = 0; stateId < newNumStates; stateId++) {
		activeArr[stateId] = true;
	}
	
	delete[] newStateIds;
}

std::ostream& operator<<(std::ostream& out, const DFA& dfa) {
    for (int rowNum = 0; rowNum < dfa.getSize(); rowNum++) {
		out << (dfa.getAccepting(rowNum) ? "+" : "-") << " ";
		
		out << rowNum << " ";
		
		for (int colNum = 0; colNum < (int)dfa.getAlphabet().size(); colNum++) {
			out << ((dfa.getTransition(rowNum, colNum) != -1) ? std::to_string(dfa.getTransition(rowNum, colNum)) : "E") << " ";
		}
		
		out << "\n";
	}
	
	return out;
}