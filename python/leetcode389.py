#Tags - sorting, error handling
#https://leetcode.com/problems/find-the-difference/
#beats 69%
class Solution:
    def findTheDifference(self, s: str, t: str) -> str:
        s = sorted(s)
        t = sorted(t)
        for i in range(len(t)):
            try:
                if(t[i] != s[i]):
                    return t[i]
            except:
                return t[-1]