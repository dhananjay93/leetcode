#Tags - loops, conditioning
#https://leetcode.com/problems/find-target-indices-after-sorting-array/
#beats 52%
class Solution:
    def targetIndices(self, nums: List[int], target: int) -> List[int]:
        lst = []
        nums = sorted(nums)
        for i in range(len(nums)):
            if target == nums[i]:
                lst.append(i)
        return lst