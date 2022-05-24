#Tags - sort, running loop through both the sides of list
#https://leetcode.com/problems/minimize-maximum-pair-sum-in-array/
#beats 98%
class Solution:
    def minPairSum(self, nums: List[int]) -> int:
        
        nums = sorted(nums)

        max_ = max(nums)

        for i in range(int(len(nums)/2)):
            sum_ = nums[i] + nums[-(i+1)]
            if max_ < sum_: 
                max_ = sum_

        return max_