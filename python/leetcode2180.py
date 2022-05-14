# Tags Loops, Math
# https://leetcode.com/problems/count-integers-with-even-digit-sum/
# Beats 49%
class Solution:
    def countEven(self, num: int) -> int:
        
        ans = 0
        for i in range(1,num+1):
            res = 0
            for j in str(i):
                res += int(j)

            if res%2 == 0:
                ans += 1

        return ans