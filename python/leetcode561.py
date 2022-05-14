#Tags - sorting, even numbers sum
#https://leetcode.com/problems/array-partition-i/
#beats 91%
class Solution:
    def arrayPairSum(self, nums: List[int]) -> int:
        nums = sorted(nums)
        sum_ = 0
        for i in range(len(nums)):
            if i%2 == 0:
                sum_ = sum_ + nums[i]
        return sum_