#include <iostream>
#include <fstream>
#include <utility>
#include <vector>

#include "automata_to_verilog.h"

void outputVerilogFile(Automata automata, std::string filename) {
	std::ofstream fout("Outputs/generated.v");
	
	int characterSize = 8 * automata.bytesPerCharacter;
	bool first;
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		fout << "module STE" << id << "(\n";
		fout << "\tinput [" << characterSize - 1 << ":0] character,\n";
		if (!automata.stes[id].start) {
			fout << "\tinput isActive,\n";
		}
		fout << "\toutput activateChildren\n";
		fout << ");\n";
		
		fout << "\tassign activateChildren = ";
		if (!automata.stes[id].start) {
			fout << "isActive && ";
		} 
		fout << "(";
		first = true;
		for (std::pair<int, int>& edgeRange : automata.stes[id].edgeRanges) {
			if (first) {
				first = false;
			} else {
				fout << " || ";
			}
			
			if (edgeRange.first == edgeRange.second) {
				fout << "character == " << edgeRange.first;
			} else {
				fout << "(" << edgeRange.first << " <= character && character <= " << edgeRange.second << ")";
			}
		}
		fout << ");\n";
		
		fout << "endmodule\n\n";
	}
	
	fout << "module FF(\n";
	fout << "\tinput setActive,\n";
	fout << "\tinput clock,\n";
	fout << "\toutput reg isActive\n";
	fout << ");\n";
	fout << "\talways @(posedge clock)\n";
	fout << "\t\tisActive <= setActive;\n";
	fout << "endmodule\n\n";
	
	fout << "module main();\n";
	fout << "\tinteger fin, bytesRead;\n";
	fout << "\treg [" << characterSize - 1 << ":0] character;\n";
	fout << "\treg clock;\n\n";
	
	fout << "\twire ";
	first = true;
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		if (!automata.stes[id].start) {
			if (first) {
				first = false;
			} else {
				fout << ", ";
			}
			
			fout << "ste" << id << "Active";
		}
	}
	fout << ";\n";
	
	fout << "\twire ";
	first = true;
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		if (first) {
			first = false;
		} else {
			fout << ", ";
		}
		
		fout << "ste" << id << "ChildrenActivate";
	}
	fout << ";\n\n";
	
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		fout << "\tSTE" << id << " ste" << id << "(character, ";
		if (!automata.stes[id].start) {
			fout << "ste" << id << "Active, ";
		}
		
		fout << "ste" << id << "ChildrenActivate);\n";
	}
	fout << "\n";
	
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		if (!automata.stes[id].start) {
			fout << "\tFF ste" << id << "FF(";
			first = true;
			for (int parent : automata.stes[id].parents) {
				if (first) {
					first = false;
				} else {
					fout << " || ";
				}
				
				fout << "ste" << parent << "ChildrenActivate";
			}
			fout << ", clock, ste" << id << "Active);\n";
		}
	}
	fout << "\n";
	
	fout << "\talways #5 clock = !clock;\n\n";
	
	fout << "\tinitial\n";
	fout << "\tbegin\n";
	fout << "\t\tfin = $fopen(\"input.txt\", \"rb\");\n";
	fout << "\t\tclock = 0;\n\n";
	
	fout << "\t\twhile (1)\n";
	fout << "\t\tbegin\n";
	fout << "\t\t\tbytesRead = $fread(character, fin, 0, " << automata.bytesPerCharacter << ");\n";
	fout << "\t\t\tif (bytesRead < " << automata.bytesPerCharacter << ")\n";
	fout << "\t\t\t\t$finish;\n\n";
	
	fout << "\t\t\t#1;\n\n";
	
	fout << "\t\t\t$display(\"Character: %h\", character);\n";
	for (unsigned int id = 0; id < automata.stes.size(); id++) {
		fout << "\t\t\t$display(\"" << id << ": " << (automata.stes[id].start ? "S" : "%d") << " %d\", ";
		if (!automata.stes[id].start) {
			fout << "ste" << id << "Active, ";
		}
		fout << "ste" << id << "ChildrenActivate);\n";
	}
	fout << "\t\t\t$display(\"report: %d\", ";
	first = true;
	for (int id : automata.reportingSTEs) {
		if (first) {
			first = false;
		} else {
			fout << " || ";
		}
		
		fout << "ste" << id << "ChildrenActivate";
	}
	fout << ");\n";
	fout << "\t\t\t$display();\n\n";
	
	fout << "\t\t\t#9;\n";
	
	fout << "\t\tend\n";
	fout << "\tend\n";
	fout << "endmodule\n";
}