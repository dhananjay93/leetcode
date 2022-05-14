# Tags Math
# https://leetcode.com/problems/add-digits/
# Beats 55%
class Solution:
    def addDigits(self, num: int) -> int:
        '''https://leetcode.com/problems/add-digits/'''
        while num >= 10:
            sum_ = 0 
            while num:
                sum_ += num%10
                num = num//10
            num = sum_

        return num