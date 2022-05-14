#Tags - if, loops
#https://leetcode.com/contest/weekly-contest-277/problems/count-elements-with-strictly-smaller-and-greater-elements/
#beats 9%
class Solution:
    def countElements(self, nums: List[int]) -> int:
        counter = 0
        for i in nums:
            if i == min(nums) or i == max(nums):
                continue
            counter = counter + 1
        return counter
