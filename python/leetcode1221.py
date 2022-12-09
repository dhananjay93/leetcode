#Tags - list, comparison
#https://leetcode.com/problems/split-a-string-in-balanced-strings/description/
#beats 71%

class Solution:
    def balancedStringSplit(self, s: str) -> int:

        l, r, res = 0, 0, 0

        for num, val in enumerate(s):
            if val == 'L':
                l += 1
            else:
                r += 1 
            if r > 0 and l == r:
                res += 1
                l, r = 0, 0
        
        return res