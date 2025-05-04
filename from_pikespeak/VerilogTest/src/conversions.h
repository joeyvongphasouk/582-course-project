#ifndef AUTOMATA_TO_VERILOG_H
#define AUTOMATA_TO_VERILOG_H

#include <ostream>

#include "automata.h"
#include "regex/DFA.h"

DFA* regexToDFA(std::string regex, std::string regexSrcDir);

Automata dfaToAutomata(DFA* dfa, int bytesPerCharacter);

void outputANMLFile(Automata& automata, std::ostream& out);

void outputVerilogFile(Automata& automata, std::ostream& out, bool simulation = false);

#endif