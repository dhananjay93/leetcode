#Tags - list
#https://leetcode.com/problems/smallest-index-with-equal-value/description/
#beats 81%

class Solution:
    def smallestEqual(self, nums: List[int]) -> int:
        for i in range(len(nums)):
            if i%10 == nums[i]:
                return i 
        
        return -1