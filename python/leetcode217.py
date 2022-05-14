#Tags - sets, length
#https://leetcode.com/problems/contains-duplicate/
#beats 99%
class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        if len(set(nums)) < len(nums):
            return True
        else:
            return False