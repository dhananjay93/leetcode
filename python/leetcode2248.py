#Tags - list, set
#https://leetcode.com/problems/intersection-of-multiple-arrays/
#beats 16%
class Solution:
    def intersection(self, nums: List[List[int]]) -> List[int]:
        res = set(nums[0])
        for i in range(len(nums)-1):
            res = res.intersection(set(nums[i+1]))
        return sorted(list(res))
