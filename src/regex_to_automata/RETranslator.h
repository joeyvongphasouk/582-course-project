#ifndef RE_TRANSLATOR_H
#define RE_TRANSLATOR_H

#include <ostream>

#include "CFG.h"
#include "NFA.h"

class RETranslator {
	public:
		RETranslator(char lambda, std::string alphabet);
		
		NFA getNFA(CFG::ParseNode* root);
	private:
		void addNode(NFA* nfa, CFG::ParseNode* curNode, int sourceId, int destId);
		
		char lambda;
		std::string alphabet;
};

#endif