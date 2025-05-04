#include <fstream>
#include <utility>
#include <vector>
#include <sstream>
#include <algorithm>

#include "conversions.h"

#include "regex/CFG.h"
#include "regex/RETranslator.h"
#include "regex/Scanner.h"
#include "regex/utilities.h"

DFA* regexToDFA(std::string regex, std::string regexSrcDir) {
	std::ifstream fin(regexSrcDir + "RE.cfg");
	CFGBuilder unfinishedCFG(fin);
	fin.close();
	
	CFG cfg(unfinishedCFG);
	
	fin.open(regexSrcDir + "RE.scan");
	Scanner scanner(fin);
	fin.close();
	
	std::string alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789?-.()+*| \n\\";
	RETranslator translator(1, alphabet);
	
	std::stringstream regexStream(regex);
	std::stringstream tokens;
	scanner.scan(tokens, regexStream);
	tokens.clear();
	tokens.seekg(0);
	
	std::ifstream sdtProcs(regexSrcDir + "RE.sdt");
	DFA* dfa(translator.getNFA(cfg.getAST(sdtProcs, tokens)));
	
	fin.close();
	sdtProcs.close();
	return dfa;
}

Automata dfaToAutomata(DFA* dfa, int bytesPerCharacter) {
	int numStates = dfa->getSize();
	int numCharacters = dfa->getAlphabet().size();
	
	std::vector<Automata::STE> stes;
	std::vector<std::vector<int>> steMap; // Maps stateId, characterId to steId
	steMap.reserve(numStates);
	for (int stateId = 0; stateId < numStates; stateId++) {
		steMap.emplace_back(numCharacters, -1);
	}
	
	for (int sourceId = 0; sourceId < numStates; sourceId++) {
		for (int characterId = 0; characterId < numCharacters; characterId++) {
			int destId = dfa->getTransition(sourceId, characterId);
			if (destId == -1) {
				continue;
			}
			
			int steId = steMap[destId][characterId];
			if (steId == -1) {
				steId = stes.size();
				steMap[destId][characterId] = steId;
				stes.emplace_back();
				stes.back().edgeRanges.emplace_back(dfa->getAlphabet()[characterId], dfa->getAlphabet()[characterId]);
				stes.back().start = sourceId == 0;
				stes.back().reporting = dfa->getAccepting(destId);
			}
			
			//Temporarily adds sourceId as a parent if this isn't an edge to a start node
			if (!stes[steId].start) {
				stes[steId].parents.emplace(sourceId);
			}
		}
	}
	
	//Replaces state parents with the real thing
	for (Automata::STE& ste : stes) {
		std::unordered_set<int> realParents;
		for (int stateId : ste.parents) {
			for (int characterId = 0; characterId < numCharacters; characterId++) {
				int steId = steMap[stateId][characterId];
				if (steId != -1) {
					realParents.emplace(steId);
				}
			}
		}
		
		ste.parents = realParents;
	}
	
	return {stes, 1};
}

void outputANMLFile(Automata& automata, std::ostream& out) {
	out << "<anml version=\"1.0\"  xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n";
	out << "\t<automata-network id=\"automata\">\n";
	
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		out << "\t\t<state-transition-element id=\"" << id << "\"";
		out << " symbol-set=\"[";
		for (std::pair<int, int>& edgeRange : automata.stes[id].edgeRanges) {
			for (int character = edgeRange.first; character <= edgeRange.second; character++) {
				out << "\\x" << std::hex << character << std::dec;
			}
		}
		out << "]\"";
		if (automata.stes[id].start) {
			out << " start=\"all-input\"";
		}
		out << ">\n";
		
		for (unsigned int destId = 0; destId < automata.stes.size(); destId++) {
			if (automata.stes[destId].parents.find(id) != automata.stes[destId].parents.end()) {
				out << "\t\t\t<activate-on-match element=\"" << destId << "\"/>\n";
			}
		}
		
		if (automata.stes[id].reporting) {
			out << "\t\t\t<report-on-match reportcode=\"0\"/>\n";
		}
		
		out << "\t\t</state-transition-element>\n";
	}
	
	out << "\t</automata-network>\n";
	out << "</anml>\n";
}

void outputVerilogFile(Automata& automata, std::ostream& out, bool simulation) {
	int characterSize = 8 * automata.bytesPerCharacter;
	bool first;
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		out << "module STE" << id << "(\n";
		out << "\tinput [" << characterSize - 1 << ":0] character,\n";
		if (!automata.stes[id].start) {
			out << "\tinput isActive,\n";
		}
		out << "\toutput activateChildren\n";
		out << ");\n";
		
		out << "\tassign activateChildren = ";
		if (!automata.stes[id].start) {
			out << "isActive && ";
		} 
		out << "(";
		first = true;
		for (std::pair<int, int>& edgeRange : automata.stes[id].edgeRanges) {
			if (first) {
				first = false;
			} else {
				out << " || ";
			}
			
			if (edgeRange.first == edgeRange.second) {
				out << "character == " << edgeRange.first;
			} else {
				out << "(" << edgeRange.first << " <= character && character <= " << edgeRange.second << ")";
			}
		}
		out << ");\n";
		
		out << "endmodule\n\n";
	}
	
	out << "module FF(\n";
	out << "\tinput setActive,\n";
	out << "\tinput clock,\n";
	out << "\toutput reg isActive\n";
	out << ");\n";
	out << "\talways @(posedge clock)\n";
	out << "\t\tisActive <= setActive;\n";
	out << "endmodule\n\n";
	
	out << "module main();\n";
	out << "\tinteger fin, bytesRead;\n";
	out << "\treg [" << characterSize - 1 << ":0] character;\n";
	out << "\treg clock;\n\n";
	
	first = true;
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		if (!automata.stes[id].start) {
			if (first) {
				out << "\twire ";
				first = false;
			} else {
				out << ", ";
			}
			
			out << "ste" << id << "Active";
		}
	}
	if (!first) {
		out << ";\n";
	}
	
	first = true;
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		if (first) {
			out << "\twire ";
			first = false;
		} else {
			out << ", ";
		}
		
		out << "ste" << id << "ChildrenActivate";
	}
	if (!first) {
		out << ";\n";
	}
	out << "\n";
	
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		out << "\tSTE" << id << " ste" << id << "(character, ";
		if (!automata.stes[id].start) {
			out << "ste" << id << "Active, ";
		}
		
		out << "ste" << id << "ChildrenActivate);\n";
	}
	out << "\n";
	
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		if (!automata.stes[id].start) {
			out << "\tFF ste" << id << "FF(";
			first = true;
			for (int parent : automata.stes[id].parents) {
				if (first) {
					first = false;
				} else {
					out << " || ";
				}
				
				out << "ste" << parent << "ChildrenActivate";
			}
			out << ", clock, ste" << id << "Active);\n";
		}
	}
	out << "\n";
	
	out << "\talways #5 clock = !clock;\n\n";
	
	out << "\tinitial\n";
	out << "\tbegin\n";
	out << "\t\tfin = $fopen(\"input.txt\", \"rb\");\n";
	out << "\t\tclock = 0;\n\n";
	
	out << "\t\twhile (1)\n";
	out << "\t\tbegin\n";
	out << "\t\t\tbytesRead = $fread(character, fin, 0, " << automata.bytesPerCharacter << ");\n";
	out << "\t\t\tif (bytesRead < " << automata.bytesPerCharacter << ")\n";
	out << "\t\t\t\t$finish;\n\n";
	
	out << "\t\t\t#1;\n\n";
	
	out << "\t\t\t$display(\"Character: %h\", character);\n";
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		out << "\t\t\t$display(\"" << id << ": " << (automata.stes[id].start ? "S" : "%d") << " %d\", ";
		if (!automata.stes[id].start) {
			out << "ste" << id << "Active, ";
		}
		out << "ste" << id << "ChildrenActivate);\n";
	}
	out << "\t\t\t$display(\"report: %d\", ";
	first = true;
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		if (!automata.stes[id].reporting) {
			continue;
		}
		
		if (first) {
			first = false;
		} else {
			out << " || ";
		}
		
		out << "ste" << id << "ChildrenActivate";
	}
	out << ");\n";
	out << "\t\t\t$display();\n\n";
	
	out << "\t\t\t#9;\n";
	
	out << "\t\tend\n";
	out << "\tend\n";
	out << "endmodule\n";
}