#include <algorithm>
#include <map>
#include <ostream>
#include <stack>
#include <string>
#include <vector>

#include "NFA.h"

#include "utilities.h"

NFA::NFA(int numStates, char lambda, std::string alphabet) {
	this->states.resize(numStates);
	this->lambda = lambda;
	this->alphabet = alphabet;
}

void NFA::setAccepting(int stateId, bool accepting) {
	states.at(stateId).accepting = accepting;
}

void NFA::addTransition(int sourceId, int destId, char transition) {
	const char lambda = this->lambda;
	auto iter = std::lower_bound(states.at(sourceId).transitions.begin(), states.at(sourceId).transitions.end(), transition, 
	[lambda](auto& left, auto& right){
		return State::transitionCompare(left.transition, right, lambda);
	});
	
	states.at(sourceId).transitions.insert(iter, {transition, destId});
}

int NFA::addState() {
	states.push_back(State());
	
	return states.size() - 1;
}

void NFA::clear() {
	states.clear();
}

void NFA::display(std::ostream& out) {
	out << "NFA: " << '\n';
	out << "https://dreampuf.github.io/GraphvizOnline/";
	out << "#digraph%20G%20%7B%0D%0A";
	
	for (unsigned int stateId = 0; stateId < states.size(); stateId++) {
		out << "%20%20%20%20" << stateId << toURI(" [shape=");
		
		if (states.at(stateId).accepting) {
			out << toURI("double");
		}
		
		out << toURI("circle];\n");
		
		for (State::Transition transition : states.at(stateId).transitions) {
			out << "%20%20%20%20" << stateId << "%20%2D%3E%20" << transition.destId << toURI(" [label=");
			
			if (transition.transition == lambda) {
				out << toURI("lambda");
			} else {
				out << toURI(toAlphabetEncoding(transition.transition));
			}

			out << toURI("];\n");
		}
	}
	
	out << "%7D%0D%0A" << '\n';
}

std::ostream& operator<<(std::ostream& out, const NFA& nfa) {
	out << nfa.states.size() << " " << toAlphabetEncoding(nfa.lambda) << " ";
	
	for (char c : nfa.alphabet) {
		out << toAlphabetEncoding(c) << " ";
	}
	
	out << '\n';
	
	for (unsigned int sourceId = 0; sourceId < nfa.states.size(); sourceId++) {
		char prefix = (nfa.states.at(sourceId).accepting ? '+' : '-');
		
		std::vector<std::vector<char>> transitions;
		transitions.resize(nfa.states.size());
		
		for (NFA::State::Transition transition : nfa.states.at(sourceId).transitions) {
			if (std::find(transitions.at(transition.destId).begin(), transitions.at(transition.destId).end(), transition.transition) == transitions.at(transition.destId).end()) {
				transitions.at(transition.destId).push_back(transition.transition);
			}
		}
		
		for (unsigned int destId = 0; destId < nfa.states.size(); destId++) {
			if (transitions.at(destId).empty() && (destId != sourceId || !nfa.states.at(sourceId).accepting)) {
				continue;
			}
			
			out << prefix << " " << sourceId << " " << destId << " ";
			
			for (char transition : transitions.at(destId)) {
				out << toAlphabetEncoding(transition) << " ";
			}
			
			out << '\n';
		}
	}
	
	return out;
}

NFA::operator DFA*() const {
	std::map<std::vector<int>, int> stateIds;
	std::vector<bool> accepting;
	std::vector<int*> transitionTable;
	
	std::stack<std::vector<int>> toProcess;
	toProcess.push(getSources({0}));
	stateIds.emplace(toProcess.top(), 0);
	accepting.push_back(getAccepting(toProcess.top()));
	transitionTable.push_back(new int[alphabet.size()]);
	
	while (!toProcess.empty()) {
		std::vector<int> stateSet = toProcess.top();
		toProcess.pop();
		int stateId = stateIds.at(stateSet);
		
		for (int colNum = 0; colNum < (int)alphabet.size(); colNum++) {
			std::vector<int> newStateSet = getSources(getDestinations(stateSet, alphabet.at(colNum)));
			
			if (!newStateSet.empty()) {
				int newStateId;
				if (auto stateIdIter = stateIds.find(newStateSet); stateIdIter != stateIds.end()) {
					newStateId = stateIdIter->second;
				} else {
					newStateId = stateIds.size();
					
					stateIds.emplace(newStateSet, newStateId);
					accepting.push_back(getAccepting(newStateSet));
					transitionTable.push_back(new int[alphabet.size()]);
					toProcess.push(newStateSet);
				}
				
				transitionTable.at(stateId)[colNum] = newStateId;
			} else {
				transitionTable.at(stateId)[colNum] = -1;
			}
		}
	}
	
	DFA* dfa = new DFA(transitionTable.size(), alphabet);
	
	for (int stateId = 0; stateId < (int)stateIds.size(); stateId++) {
		if (accepting.at(stateId)) {
			dfa->setAccepting(stateId, true);
		}
		
		for (int colNum = 0; colNum < (int)alphabet.size(); colNum++) {
			dfa->setTransition(stateId, transitionTable.at(stateId)[colNum], colNum);
		}
		
		delete[] transitionTable.at(stateId);
	}
	
	return dfa;
}

bool NFA::getAccepting(std::vector<int> stateSet) const {
	for (int stateId : stateSet) {
		if (states.at(stateId).accepting) {
			return true;
		}
	}
	
	return false;
}

std::vector<int> NFA::getSources(std::vector<int> sources) const {
	for (unsigned int i = 0; i < sources.size(); i++) {
		const std::vector<State::Transition>& transitions = states.at(sources.at(i)).transitions;
		for (unsigned int j = 0; j < transitions.size() && transitions.at(j).transition == lambda; j++) {
			if (find(sources.begin(), sources.end(), transitions.at(j).destId) == sources.end()) {
				sources.push_back(transitions.at(j).destId);
			}
		}
	}
	
	sort(sources.begin(), sources.end());
	
	return sources;
}
	
std::vector<int> NFA::getDestinations(std::vector<int> sources, char transition) const {
	const char lambda = this->lambda;
	auto transitionCompare = [lambda](auto& left, auto& right){
		return State::transitionCompare(left.transition, right, lambda);
	};
	
	std::vector<int> destinations;
	
	for (unsigned int i = 0; i < sources.size(); i++) {
		const std::vector<State::Transition>& transitions = states.at(sources.at(i)).transitions;
		auto j = std::lower_bound(transitions.begin(), transitions.end(), transition, transitionCompare);
		for (; j < transitions.end() && j->transition == transition; j++) {
			if (find(destinations.begin(), destinations.end(), j->destId) == destinations.end()) {
				destinations.push_back(j->destId);
			}
		}
	}
	
	return destinations;
}

bool NFA::State::transitionCompare(const char& left, const char& right, const char first) {
	if (left == first) {
		return true;
	}
	
	if (right == first) {
		return false;
	}
	
	return left < right;
}