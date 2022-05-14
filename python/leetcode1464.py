#Tags - sort, indexing
#https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array/
#beats 99%
class Solution:
    def maxProduct(self, nums: List[int]) -> int:
        nums = sorted(nums) 
        return (nums[-1]-1)*(nums[-2]-1)