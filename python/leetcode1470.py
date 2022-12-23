#Tags - list
#https://leetcode.com/problems/shuffle-the-array/description/
#beats 93%

class Solution:
    def shuffle(self, nums: List[int], n: int) -> List[int]:
        
        res = []

        for i in range(n):
            res.append(nums[i])
            res.append(nums[i+n])
        
        return res