#Tags - math
#https://leetcode.com/problems/calculate-money-in-leetcode-bank/description/
#beats 83%

class Solution:
    def totalMoney(self, n: int) -> int:

        res = 0

        for i in range(1,n+1):
            if i%7 == 0:
                #res.append(7 + i//7  - 1)
                res += (7 + i//7  - 1)
            else:
                #res.append(i%7 + i//7)
                res += (i%7 + i//7)
        
        return res       