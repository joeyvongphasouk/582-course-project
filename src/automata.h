#ifndef AUTOMATA_H
#define AUTOMATA_H

struct Automata {
	struct STE {
		std::vector<std::pair<int, int>> edgeRanges;
		std::vector<int> parents;
		bool start;
	};
	
	std::vector<STE> stes;
	std::vector<int> reportingSTEs;
	int bytesPerCharacter;
};

#endif