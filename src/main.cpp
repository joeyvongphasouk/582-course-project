#include <iostream>
#include <fstream>

#include "conversions.h"

int main(int argc, char* argv[]) {
	if (argc < 3) {
		std::cout << "Needs 2 arguments: inputFilename, outputDir\n";
		return 1;
	}
	
	std::string regexSrcDir = argv[0];
	regexSrcDir.erase(regexSrcDir.begin() + regexSrcDir.find_last_of("/"), regexSrcDir.end());
	regexSrcDir.append("/src/regex/");
	std::string inputFilename = argv[1];
	std::string outputDir = argv[2];
	
	std::ifstream fin(inputFilename);
	std::ofstream fout;
	std::string line;
	if (fin.fail()) {
		return 1;
	}
	
	std::string regex;
	while (true) {
		std::getline(fin, line);
		if (fin.fail() || line == "") {
			if (regex.size() >= 1) {
				regex.pop_back();
			}
			break;
		}
		
		if (line.back() == '\r') {
			line.pop_back();
		}
		
		regex.append(line);
		regex.push_back('|');
	}
	fin.close();
	
	DFA* dfa = regexToDFA(regex, regexSrcDir);
	dfa->optimize();
	
	Automata automata = dfaToAutomata(dfa, 1);
	delete dfa;
	
	fout.open(outputDir + "generated.anml");
	if (fout.fail()) {
		return 1;
	}
	
	outputANMLFile(automata, fout);
	fout.close();
	
	fout.open(outputDir + "generated.v");
	if (fout.fail()) {
		return 1;
	}
	
	automata.minimize();
	outputVerilogFile(automata, fout);
	fout.close();
	
	fout.open(outputDir + "generated.xdc");
	if (fout.fail()) {
		return 1;
	}
	
	fout << "set_property PACKAGE_PIN AB9 [get_ports clock]\n";
	fout << "create_clock -period 4 -name clock [get_ports clock]\n\n";
	
	fout << "set_property PACKAGE_PIN J18      [get_ports \"HBM_CATTRIP\"]\n";
	fout << "set_property IOSTANDARD  LVCMOS18 [get_ports \"HBM_CATTRIP\"]\n";
	fout << "set_property PULLDOWN TRUE        [get_ports \"HBM_CATTRIP\"]\n";
	fout.close();
	
	fout.open(outputDir + "generated.tcl");
	if (fout.fail()) {
		return 1;
	}
	
	fout << "read_verilog generated.v\n";
	fout << "read_xdc generated.xdc\n\n";
	
	fout << "synth_design -top main -part xcu50-fsvh2104-2-e\n";
	fout << "opt_design\n";
	fout << "place_design\n";
	fout << "phys_opt_design\n";
	fout << "route_design\n\n";

	fout << "report_timing_summary -datasheet -file timing_report.txt\n";
	fout << "report_power -file power_report.txt\n";
	fout << "report_utilization -file utilization_report.txt\n\n";

	fout << "write_bitstream \"generated.bit\" -force\n";
	fout.close();
	
	return 0;
}