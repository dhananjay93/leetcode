#Tags - list,conditioning
#https://leetcode.com/problems/happy-number/
#beats 87%
class Solution:
    def isHappy(self, n: int) -> bool:
        y = 0
        d = []
        while y != 1:
            n = list(str(n))

            y = 0
            for i in n:
                y += int(i)**2
            if y in d:
                return False
            d.append(y)
            n = y
        return (n == 1)