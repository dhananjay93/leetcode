#Tags -- counter
#https://leetcode.com/problems/valid-anagram/
#Beats 36%
from collections import Counter
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        return (Counter(s)==Counter(t))