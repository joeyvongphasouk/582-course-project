#ifndef AUTOMATA_H
#define AUTOMATA_H

#include <iostream>
#include <vector>
#include <unordered_set>
#include <utility>

struct Automata {
	struct STE {
		std::vector<std::pair<int, int>> edgeRanges;
		std::unordered_set<int> parents = {};
		bool start;
		bool reporting;
	};
	
	std::vector<STE> stes;
	int bytesPerCharacter;
	
	void display(std::ostream& out);
	
	void minimize();
};

#endif