#Tags - string, nums
#https://leetcode.com/problems/sum-of-digits-in-the-minimum-number/description/
#beats 88%

class Solution:
    def sumOfDigits(self, nums: List[int]) -> int:
        num = min(nums)
        sum_ = 0
        for i in str(num):
            sum_ += int(i)
        if sum_ % 2 == 1:
            return 0
        return 1