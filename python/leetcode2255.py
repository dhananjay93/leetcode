#Tags - string, startswith
#https://leetcode.com/problems/count-prefixes-of-a-given-string/
#beats 33%
class Solution:
    def countPrefixes(self, words: List[str], s: str) -> int:
        
        return sum([1 for i in words if s.startswith(i)])