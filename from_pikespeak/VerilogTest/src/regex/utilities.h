#ifndef UTILITIES_H
#define UTILITIES_H

#include <string>
#include <vector>

int max(int left, int right);

std::vector<std::string> split(const std::string& str, const char delim);

int hexToDec(const std::string& str);

std::string decToHex(int num);

std::string fromAlphabetEncoding(const std::string& str);

std::string toAlphabetEncoding(const char c);

std::string toAlphabetEncoding(const std::string& str, int start = 0, int end = -1);

std::string toURI(const char c);

std::string toURI(const std::string& str);

template<class T>
T* toArray(const std::vector<T>& vec);

template <int maxNodes, class T>
class Trie {
public:
    Trie();
	
    ~Trie();
protected:
	struct TrieNode {
        TrieNode* children[maxNodes];
        bool terminal;
		T value;
		
        TrieNode();
		
        ~TrieNode();
    };
public:
	void insert(const std::string &s, TrieNode* curNode = nullptr, unsigned int pos = 0);
	
    bool contains(const std::string &s, TrieNode* curNode = nullptr, unsigned int pos = 0);
	
    bool is_prefix(const std::string &s, TrieNode* curNode = nullptr, unsigned int pos = 0);
protected:	
	virtual void runOnInsert(const std::string &s, TrieNode* curNode, unsigned int pos) = 0;
	
    virtual int getIndex(char c) = 0;
	
	TrieNode* root = nullptr;
};

template<class T>
T* toArray(const std::vector<T>& vec) {
	T* arr = new T[vec.size()];
	for (unsigned int i = 0; i < vec.size(); i++) {
		arr[i] = vec.at(i);
	}
	
	return arr;
}

template <int maxNodes, class T>
Trie<maxNodes, T>::Trie() {
	root = new TrieNode;
}

template <int maxNodes, class T>
Trie<maxNodes, T>::~Trie() {
	delete root;
}

template <int maxNodes, class T>
Trie<maxNodes, T>::TrieNode::TrieNode() {
	for (int i = 0; i < maxNodes; i++) {
		children[i] = nullptr;
	}
	terminal = false;
}

template <int maxNodes, class T>
Trie<maxNodes, T>::TrieNode::~TrieNode() {
	for (int i = 0; i < maxNodes; i++) {
		delete children[i];
	}
}

template <int maxNodes, class T>
void Trie<maxNodes, T>::insert(const std::string &s, TrieNode* curNode, unsigned int pos) {
	if (pos == 0) {
		curNode = root;
	}
	
	runOnInsert(s, curNode, pos);
	
	if (pos == s.length()) {
		curNode->terminal = true;
	} else {
		int index = getIndex(s.at(pos));
		if (curNode->children[index] == nullptr) {
			curNode->children[index] = new TrieNode;
		}
		
		insert(s,curNode->children[index],pos+1);
	}
}

template <int maxNodes, class T>
bool Trie<maxNodes, T>::contains(const std::string &s, TrieNode* curNode, unsigned int pos) {
	if (pos == 0) {
		curNode = root;
	}
	
	if (pos == s.length()) {
		return curNode->terminal;
	}

	int index = getIndex(s.at(pos));
	if (curNode->children[index] == nullptr) {
		return false;
	}

	return contains(s,curNode->children[index],pos+1);
}

template <int maxNodes, class T>
bool Trie<maxNodes, T>::is_prefix(const std::string &s, TrieNode* curNode, unsigned int pos) {
	if (pos == 0) {
		curNode = root;
	}
	
	if (pos == s.length()) {
		return true;
	}

	int index = getIndex(s.at(pos));
	if (curNode->children[index] == nullptr) {
		return false;
	}

	return is_prefix(s,curNode->children[index],pos+1);
}

#endif