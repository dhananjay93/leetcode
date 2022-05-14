#Tags - maths, loops
#hhttps://leetcode.com/problems/two-sum/
#beats 77%
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        for i in range(len(nums)):
            for j in range(len(nums)):
                if i == j:
                    continue
                if nums[i] + nums[j] == target:
                    return [i,j]
                    break
            else:
                continue
            break