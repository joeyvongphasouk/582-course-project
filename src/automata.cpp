#include <algorithm>

#include "regex/utilities.h"

#include "automata.h"

void Automata::display(std::ostream& out) {
	out << "Automata: " << '\n';
	out << "https://dreampuf.github.io/GraphvizOnline/";
	out << "#digraph%20G%20%7B%0D%0A";
	
	out << "%20%20%20%20" << toURI("-1 [shape=circle];\n");
	
	for (unsigned int steId = 0; steId < stes.size(); steId++) {
		out << "%20%20%20%20" << steId << toURI(" [shape=");
		if (stes[steId].reporting) {
			out << toURI("double");
		}
		out << toURI("circle];\n");
		
		std::string transitionsDisplay = "\"";
		bool first = true;
		for (std::pair<int, int>& edgeRange : stes[steId].edgeRanges) {
			if (first) {
				first = false;
			} else {
				transitionsDisplay.push_back(',');
			}
			
			transitionsDisplay.push_back('[');
			transitionsDisplay.push_back(edgeRange.first);
			if (edgeRange.first != edgeRange.second) {
				transitionsDisplay.push_back(',');
				transitionsDisplay.push_back(edgeRange.second);
			}
			transitionsDisplay.push_back(']');
		}
		transitionsDisplay.push_back('\"');
		transitionsDisplay = toURI(transitionsDisplay);
		
		if (stes[steId].start) {
			out << "%20%20%20%20" << -1 << "%20%2D%3E%20" << steId;
			out << toURI(" [label=") << transitionsDisplay << toURI("];\n");
		}
		
		for (int parent : stes[steId].parents) {
			out << "%20%20%20%20" << parent << "%20%2D%3E%20" << steId;
			out << toURI(" [label=") << transitionsDisplay << toURI("];\n");
		}
	}
	
	out << "%7D%0D%0A" << '\n';
}

void Automata::minimize() {
	for (Automata::STE& ste : stes) {
		std::sort(ste.edgeRanges.begin(), ste.edgeRanges.end());
		
		std::vector<std::pair<int, int>> newEdgeRanges = {ste.edgeRanges[0]};
		for (std::pair<int, int>& edgeRange : ste.edgeRanges) {
			if (edgeRange.first <= newEdgeRanges.back().second + 1) {
				if (newEdgeRanges.back().second < edgeRange.second) {
					newEdgeRanges.back().second = edgeRange.second;
				}
			} else {
				newEdgeRanges.emplace_back(edgeRange);
			}
		}
		ste.edgeRanges = newEdgeRanges;
	}
	
	while (true) {
		unsigned int pastNumSTEs = stes.size();
		
		std::vector<Automata::STE> newSTEs;
		std::vector<int> newIds(pastNumSTEs, -1);
		for (unsigned int steId = 0; steId < pastNumSTEs; steId++) {
			if (!stes[steId].reporting) {
				bool hasChildren = false;
				for (unsigned int destId = 0; destId < pastNumSTEs; destId++) {
					if (stes[destId].parents.find(steId) != stes[destId].parents.end()) {
						hasChildren = true;
						break;
					}
				}
				
				if (!hasChildren) {
					continue;
				}
			}
			
			bool merge = false;
			for (unsigned int oldId = 0, newId = 0; oldId < pastNumSTEs && newId < newSTEs.size(); oldId++) {
				if (newIds[oldId] != (int)newId) {
					continue;
				}
				
				bool sameReportStatus = newSTEs[newId].reporting == stes[steId].reporting;
				bool currentHasSelfEdge = stes[steId].parents.find(steId) != stes[steId].parents.end();
				bool currentHasEdgeToNew = newSTEs[newId].parents.find(steId) != newSTEs[newId].parents.end();
				bool newHasSelfEdge = false;
				bool newHasEdgeToCurrent = false;
				for (unsigned int parentId = oldId; parentId < steId; parentId++) {
					if (newIds[parentId] != (int)newId) {
						continue;
					}
					
					if (stes[steId].parents.find(parentId) != stes[steId].parents.end()) {
						newHasEdgeToCurrent = true;
					}
					if (newSTEs[newId].parents.find(parentId) != newSTEs[newId].parents.end()) {
						newHasSelfEdge = true;
					}
				}
				
				bool sameParents = stes[steId].start == newSTEs[newId].start;
				if (sameParents) {
					for (unsigned int parentId : stes[steId].parents) {
						if (parentId != steId && newIds[parentId] != (int)newId && newSTEs[newId].parents.find(parentId) == newSTEs[newId].parents.end()) {
							sameParents = false;
							break;
						}
					}
				}
				if (sameParents) {
					for (unsigned int parentId : newSTEs[newId].parents) {
						if (parentId != steId && newIds[parentId] != (int)newId && stes[steId].parents.find(parentId) == stes[steId].parents.end()) {
							sameParents = false;
							break;
						}
					}
				}
				
				bool sameChildren = true;
				for (unsigned int childId = 0; childId < pastNumSTEs; childId++) {
					if (childId != steId && newIds[childId] != (int)newId) {
						std::unordered_set<int>* childParents = (newIds[childId] != -1) ? &newSTEs[newIds[childId]].parents : &stes[childId].parents;
						bool currentIsParent = childParents->find(steId) != childParents->end();
						bool newIsParent = false;
						for (int parentId : *childParents) {
							if (newIds[parentId] == (int)newId) {
								newIsParent = true;
								break;
							}
						}
						
						if (currentIsParent != newIsParent) {
							sameChildren = false;
							break;
						}
					}
				}
				
				bool sameCharacters = true;
				std::vector<std::pair<int, int>> mergedEdgeRanges;
				unsigned int currentEdgeRangeIndex = 0;
				unsigned int newEdgeRangeIndex = 0;
				while (currentEdgeRangeIndex < stes[steId].edgeRanges.size() || newEdgeRangeIndex < newSTEs[newId].edgeRanges.size()) {
					std::pair<int, int>* edgeRange;
					if (currentEdgeRangeIndex == stes[steId].edgeRanges.size()) {
						sameCharacters = false;
						edgeRange = &newSTEs[newId].edgeRanges[newEdgeRangeIndex];
						newEdgeRangeIndex++;
					} else if (newEdgeRangeIndex == newSTEs[newId].edgeRanges.size()) {
						sameCharacters = false;
						edgeRange = &stes[steId].edgeRanges[currentEdgeRangeIndex];
						currentEdgeRangeIndex++;
					} else {
						edgeRange = &stes[steId].edgeRanges[currentEdgeRangeIndex];
						if (sameCharacters && *edgeRange == newSTEs[newId].edgeRanges[newEdgeRangeIndex]) {
							currentEdgeRangeIndex++;
							newEdgeRangeIndex++;
						} else if (stes[steId].edgeRanges[currentEdgeRangeIndex].first <= newSTEs[newId].edgeRanges[newEdgeRangeIndex].first) {
							sameCharacters = false;
							edgeRange = &stes[steId].edgeRanges[currentEdgeRangeIndex];
							currentEdgeRangeIndex++;
						} else {
							sameCharacters = false;
							edgeRange = &newSTEs[newId].edgeRanges[newEdgeRangeIndex];
							newEdgeRangeIndex++;
						}
					}
					
					if (mergedEdgeRanges.empty()) {
						mergedEdgeRanges.emplace_back(*edgeRange);
					} else {
						if (edgeRange->first <= mergedEdgeRanges.back().second + 1) {
							if (mergedEdgeRanges.back().second < edgeRange->second) {
								mergedEdgeRanges.back().second = edgeRange->second;
							}
						} else {
							mergedEdgeRanges.emplace_back(*edgeRange);
						}
					}
				}
				
				if (sameParents && sameCharacters) {
					newSTEs[newId].reporting |= stes[steId].reporting;
					
					merge = true;
				} else if (sameReportStatus && newHasSelfEdge == currentHasSelfEdge && newHasEdgeToCurrent == currentHasEdgeToNew && (!newHasEdgeToCurrent || newHasSelfEdge) && sameParents && sameChildren) {
					newSTEs[newId].edgeRanges = mergedEdgeRanges;
					
					merge = true;
				} else if (sameReportStatus && (newHasSelfEdge || newHasEdgeToCurrent == currentHasSelfEdge || currentHasEdgeToNew) && sameChildren && sameCharacters) {
					for (unsigned int parentId : stes[steId].parents) {
						newSTEs[newId].parents.emplace(parentId);
					}
					
					merge = true;
				}
				
				if (merge) {
					if (currentHasSelfEdge || newHasSelfEdge) {
						newSTEs[newId].parents.emplace(oldId);
					}
					
					newIds[steId] = newId;
					
					break;
				}
				
				newId++;
			}
			
			if (!merge) {
				newIds[steId] = newSTEs.size();
				newSTEs.emplace_back(stes[steId]);
			}
		}
		
		for (Automata::STE& ste : newSTEs) {
			std::unordered_set<int> newParents;
			for (int parentId : ste.parents) {
				newParents.emplace(newIds[parentId]);
			}
			ste.parents = newParents;
		}
		
		stes = newSTEs;
		
		if (pastNumSTEs == stes.size()) {
			break;
		}
	}
}