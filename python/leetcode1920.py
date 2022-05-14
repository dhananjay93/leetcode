#Tags - math, permutation
#https://leetcode.com/problems/build-array-from-permutation/
#beats 99%
class Solution:
    def buildArray(self, nums: List[int]) -> List[int]:
        return [nums[i] for i in nums]