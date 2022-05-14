#Tags - unique sum, array
#https://leetcode.com/problems/sum-of-unique-elements/
#beats 94%
class Solution:
    def sumOfUnique(self, nums: List[int]) -> int:
        sum_ = 0
        for i in nums:
            if nums.count(i) == 1:
                sum_ += i
        return sum_