#include <fstream>
#include <iostream>
#include <string>
#include <sstream>
#include <vector>

#include "CFG.h"
#include "RETranslator.h"
#include "Scanner.h"
#include "utilities.h"

int main(int argc, char* argv[]) {
	if (argc < 3) {
		return 1;
	}
	
	std::string helperDir = argv[0];
	helperDir.erase(helperDir.begin() + helperDir.find_last_of("/"), helperDir.end());
	helperDir.append("/src/regex_to_automata/");
	std::string inputFilename = argv[1];
	std::string outputFilename = argv[2];
	
	std::ifstream fin(helperDir + "RE.cfg");
	CFGBuilder unfinishedCFG(fin);
	fin.close();
	
	CFG cfg(unfinishedCFG);
	
	fin.open(helperDir + "RE.scan");
	Scanner scanner(fin);
	fin.close();
	
	fin.open(inputFilename);
	std::string line;
	if (fin.fail()) {
		return 1;
	}
	
	std::ofstream fout(outputFilename);
	if (fout.fail()) {
		return 1;
	}
	
	std::stringstream regex, tokens;
	std::string alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ?-.()+*| \n\\";
	RETranslator translator(1, alphabet);
	std::ifstream sdtProcs(helperDir + "RE.sdt");
	while (true) {
		std::getline(fin, line);
		if (fin.fail() || line == "") {
			break;
		}
		
		line.pop_back();
		regex << line;
		
		scanner.scan(tokens, regex);
		regex.clear();
		tokens.clear();
		tokens.seekg(0);
		
		DFA* dfa(translator.getNFA(cfg.getAST(sdtProcs, tokens)));
		dfa->optimize();
		dfa->display(fout);
		delete dfa;
		
		tokens.str("");
		tokens.clear();
		sdtProcs.clear();
		sdtProcs.seekg(0);
	}
	fin.close();
	fout.close();
	sdtProcs.close();
	
	return 0;
}