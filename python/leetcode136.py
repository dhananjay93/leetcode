#Tags - sets
#https://leetcode.com/problems/single-number/
#beats 98%
class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        return  2*sum(set(nums))-sum(nums)