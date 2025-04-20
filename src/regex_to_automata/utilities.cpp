#include <algorithm>
#include <string>
#include <vector>

#include "utilities.h"

int max(int left, int right) {
	return (left < right) ? right : left;
}

std::vector<std::string> split(const std::string& str, const char delim) {
	std::vector<std::string> parts;
	
	std::string curPart;
	for (char c : str) {
		if (c == delim) {
			if (curPart.size() > 0) {
				parts.push_back(curPart);
				curPart.clear();
			}
		} else {
			curPart.push_back(c);
		}
	}
	if (curPart.size() > 0) {
		parts.push_back(curPart);
	}
	
	return parts;
}

int hexToDec(const std::string& str) {
	int multiplier = 1;
	int num = 0;
	
	for (int i = str.size() - 1; i >= 0; i--) {
		int digit;
		if (str.at(i) >= 'a') {
			digit = str.at(i) - 'a' + 10;
		} else if (str.at(i) >= 'A') {
			digit = str.at(i) - 'A' + 10;
		} else {
			digit = str.at(i) - '0';
		}
		
		num += digit * multiplier;
		
		multiplier *= 16;
	}
	
	return num;
}

std::string decToHex(int num) {
	if (num == 0) {
		return "0";
	}
	
	std::string outputStr;
	
	while (num != 0) {
		int digit = num % 16;
		
		if (digit <= 9) {
			outputStr += std::to_string(digit);
		} else {
			outputStr += (char)('A' + digit - 10);
		}
		
		num /= 16;
	}
	
	std::reverse(outputStr.begin(), outputStr.end());
	
	return outputStr;
}

std::string fromAlphabetEncoding(const std::string& str) {
	std::string outputStr;
	
	for (unsigned int i = 0; i < str.size(); i++) {
		if (str.at(i) == ' ') {
			continue;
		}
		
		if (str.at(i) == 'x') {
			outputStr.push_back((char)(hexToDec(str.substr(i + 1, 2))));
			i += 2;
		} else {
			outputStr.push_back(str.at(i));
		}
	}
	
	return outputStr;
}

std::string toAlphabetEncoding(const char c) {
	std::string outputStr;
	
	if (('0' <= c && c <= '9') || ('A' <= c && c <= 'Z') || ('a' <= c && c <= 'w') || ('y' <= c && c <= 'z')) {
		outputStr.push_back(c);
	} else {
		std::string hexChar = decToHex(c);
		
		outputStr.push_back('x');
		if (hexChar.size() == 1) {
			outputStr.push_back('0');
			outputStr.push_back(hexChar.at(0));
		} else {
			outputStr.push_back(hexChar.at(0));
			outputStr.push_back(hexChar.at(1));
		}
	}
	
	return outputStr;
}

std::string toAlphabetEncoding(const std::string& str, int start, int end) {
	std::string outputStr;
	
	if (end == -1) {
		end = str.size();
	}
	
	for (int i = start; i < end; i++) {
		outputStr += toAlphabetEncoding(str.at(i));
	}
	
	return outputStr;
}

std::string toURI(const char c) {
	std::string outputStr;
	
	if (('0' <= c && c <= '9') || ('A' <= c && c <= 'Z') || ('a' <= c && c <= 'z')) {
		outputStr.push_back(c);
	} else {
		std::string hexChar = decToHex(c);
		
		outputStr.push_back('%');
		if (hexChar.size() == 1) {
			outputStr.push_back('0');
			outputStr.push_back(hexChar.at(0));
		} else {
			outputStr.push_back(hexChar.at(0));
			outputStr.push_back(hexChar.at(1));
		}
	}
	
	return outputStr;
}

std::string toURI(const std::string& str) {
	std::string outputStr;
	
	for (char c : str) {
		outputStr += toURI(c);
	}
	
	return outputStr;
}