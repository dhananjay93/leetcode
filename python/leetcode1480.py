#Tags - list append
#https://leetcode.com/problems/running-sum-of-1d-array/
#beats 90%
class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        lst_ = []
        sum_ = 0
        for i in range(len(nums)):
            sum_ = nums[i] + sum_
            lst_.append(sum_)
        return lst_