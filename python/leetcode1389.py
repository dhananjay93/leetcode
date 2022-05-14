#Tags - list, insert
#https://leetcode.com/problems/create-target-array-in-the-given-order/
#beats 26%
class Solution:
    def createTargetArray(self, nums: List[int], index: List[int]) -> List[int]:
        target = []
        for i in range(len(index)):
            target.insert(index[i],nums[i])
        return target