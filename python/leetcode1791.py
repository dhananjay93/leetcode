#Tags - list, set
#https://leetcode.com/problems/find-center-of-star-graph/
#beats 12%
class Solution:
    def findCenter(self, edges: List[List[int]]) -> int:
        return list(set(edges[0]) & set(edges[1]))[0]