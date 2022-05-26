#Tags - math, while
#https://leetcode.com/problems/keep-multiplying-found-values-by-two/submissions/
#beats 20%
class Solution:
    def findFinalValue(self, nums: List[int], original: int) -> int:
        nums = sorted(nums)
        while(original in nums):
            original= original*2
        return original