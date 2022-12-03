#Tags - math, loops
#https://leetcode.com/problems/armstrong-number/description/
#beats 62%

class Solution:
    def isArmstrong(self, n: int) -> bool:
        string = str(n)
        res = 0
        for i in range(len(string)):
            res += int(string[i])**len(string)

        print(res, n)
        return res == n