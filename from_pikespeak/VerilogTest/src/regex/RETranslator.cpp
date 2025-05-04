#include <ostream>
#include <utility>

#include "RETranslator.h"

#include "CFG.h"
#include "NFA.h"
#include "utilities.h"

RETranslator::RETranslator(char lambda, std::string alphabet) {
	this->alphabet = alphabet;
	this->lambda = lambda;
}

NFA RETranslator::getNFA(CFG::ParseNode* root) {
	NFA nfa(0, lambda, alphabet);
	
	int sourceId = nfa.addState();
	int destId = nfa.addState();
	addNode(&nfa, root->children[0], sourceId, destId);
	nfa.setAccepting(destId, true);
	
	delete root;
	
	return nfa;
}

void RETranslator::addNode(NFA* nfa, CFG::ParseNode* curNode, int sourceId, int destId) {
	int newSourceId = nfa->addState();
	nfa->addTransition(sourceId, newSourceId, lambda);
	sourceId = newSourceId;
	
	int curDestId = nfa->addState();
	
	if (curNode->value == "SEQ") {
		for (int i = 0; i < curNode->numChildren; i++) {
			addNode(nfa, curNode->children[i], sourceId, curDestId);
			
			if (i < curNode->numChildren - 1) {
				sourceId = curDestId;
				curDestId = nfa->addState();
			}
		}
	} else if (curNode->value == "ALT") {
		for (int i = 0; i < curNode->numChildren; i++) {
			addNode(nfa, curNode->children[i], sourceId, curDestId);
		}
	} else if (curNode->value == "range") {
		if (curNode->children[0]->value.at(0) > curNode->children[1]->value.at(0)) {
			std::exit(3);
		}
		
		for (char c = curNode->children[0]->value.at(0); c <= curNode->children[1]->value.at(0); c++) {
			nfa->addTransition(sourceId, curDestId, c);
		}
	} else if (curNode->value == "kleene") {
		nfa->addTransition(sourceId, curDestId, lambda);
		addNode(nfa, curNode->children[0], sourceId, curDestId);
		nfa->addTransition(curDestId, sourceId, lambda);
	} else if (curNode->value == "plus") {
		addNode(nfa, curNode->children[0], sourceId, curDestId);
		sourceId = curDestId;
		curDestId = nfa->addState();
		
		nfa->addTransition(sourceId, curDestId, lambda);
		addNode(nfa, curNode->children[0], sourceId, curDestId);
		nfa->addTransition(curDestId, sourceId, lambda);
	} else if (curNode->value == "dot") {
		for (char c : alphabet) {
			nfa->addTransition(sourceId, curDestId, c);
		}
	} else if (curNode->value == "lambda") {
		nfa->addTransition(sourceId, curDestId, lambda);
	} else {
		nfa->addTransition(sourceId, curDestId, fromAlphabetEncoding(curNode->value).at(0));
	}
	
	nfa->addTransition(curDestId, destId, lambda);
}