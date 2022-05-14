# Tags Loops, Math, Array
# https://leetcode.com/problems/count-integers-with-even-digit-sum/
# Beats 46%
class Solution:
    def sumZero(self, n: int) -> List[int]:
        res = [0]
        if n == 1:
            return res
        
        if n%2 == 1:
            for i in range(1,n//2 + 1):
                res.extend([0-i,0+i])
            return res
        
        res = []
        
        if n%2 == 0:
            for i in range(1,n//2+1):
                res.extend([0-i,0+i])
        
        return res