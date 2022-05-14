#Tags - list subset, loops
#https://leetcode.com/problems/is-subsequence/
#beats 67%
class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        i = j = 0
        while(i < len(s) and j < len(t)):
            if s[i] == t[j]:
                i = i + 1
            j = j + 1
        return i == len(s) 