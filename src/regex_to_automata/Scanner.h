#ifndef SCANNER_H
#define SCANNER_H

#include <istream>
#include <ostream>
#include <utility>

#include "utilities.h"

class TokenTrie : private Trie<256, std::pair<std::string, std::string>> {
public:
	void insertToken(const std::string &s, std::pair<std::string, std::string> tokenValuePair);
	
	std::pair<int, std::pair<std::string, std::string>> findFirstMatch(const std::string &s, TrieNode* curNode = nullptr, unsigned int pos = 0);
private:
	void runOnInsert(const std::string &s, TrieNode* curNode, unsigned int pos) override;
	
    int getIndex(char c) override;
	
	std::pair<std::string, std::string> nextTokenValuePair;
};

class Scanner {
public:
	Scanner(std::istream& in);
	
	void scan(std::ostream& out, std::istream& in);
private:
	int maxMatchSize = 1;
	int bufferSize = 1024;
	TokenTrie tokens;
	std::string defaultToken;
};


#endif