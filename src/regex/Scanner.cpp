#include <cstring>
#include <deque>
#include <istream>
#include <ostream>
#include <string>

#include "Scanner.h"

#include "utilities.h"

void TokenTrie::insertToken(const std::string &s, std::pair<std::string, std::string> tokenValuePair) {
	nextTokenValuePair = tokenValuePair;
	
	insert(s);
}

std::pair<int, std::pair<std::string, std::string>> TokenTrie::findFirstMatch(const std::string &s, TrieNode* curNode, unsigned int pos) {
	if (curNode == nullptr) {
		curNode = root;
	}
	
	if (curNode->terminal) {
		return {pos, curNode->value};
	}
	
	if (pos == s.size()) {
		return {-1, {"", ""}};
	}

	int index = getIndex(s.at(pos));
	if (curNode->children[index] == nullptr) {
		return {-1, {"", ""}};
	}

	return findFirstMatch(s, curNode->children[index], pos + 1);
}

void TokenTrie::runOnInsert(const std::string &s, TrieNode* curNode, unsigned int pos) {
	if (pos == s.size()) {
		curNode->value = nextTokenValuePair;
	}
}

int TokenTrie::getIndex(char c) {
	return c;
}

Scanner::Scanner(std::istream& in) {
	in >> defaultToken;
	
	std::string inputLine;
	while (true) {
		std::getline(in, inputLine);
		
		if (inputLine.back() == '\r') {
			inputLine.pop_back();
		}
		
		if (in.fail()) {
			break;
		}
		
		if (inputLine == "") {
			continue;
		}
		
		std::vector<std::string> input = split(inputLine, ' ');
		
		tokens.insertToken(input.at(0), {input.size() > 1 ? input.at(1) : defaultToken, input.size() > 2 ? input.at(2) : input.at(0)});
		
		maxMatchSize = max(maxMatchSize, input.at(0).size());
	}
	
	bufferSize = max(bufferSize, 2 * maxMatchSize);
}
	
void Scanner::scan(std::ostream& out, std::istream& in) {
	std::string buffer(bufferSize, '\0');
	int bufferIndex = bufferSize;
	
	while (true) {
		if (bufferIndex > bufferSize - maxMatchSize) {
			memcpy(&buffer[0], &buffer[bufferIndex], bufferSize - bufferIndex);
			memset(&buffer[bufferSize - bufferIndex], '\0', bufferIndex);
			
			in.read(&buffer[bufferSize - bufferIndex], bufferIndex);
			bufferIndex = 0;
		}
		
		if (buffer.at(bufferIndex) == '\0') {
			break;
		}
		
		std::pair<int, std::pair<std::string, std::string>> match = tokens.findFirstMatch(buffer, nullptr, bufferIndex);
		
		if (match.first == -1) {
			out << defaultToken << " " << buffer.at(bufferIndex) << '\n';
			
			bufferIndex++;
		} else {
			out << match.second.first << " " << match.second.second << '\n';
			
			bufferIndex = match.first;
		}
	}
}