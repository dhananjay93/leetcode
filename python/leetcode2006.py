#Tags - math, loop
#https://leetcode.com/problems/count-number-of-pairs-with-absolute-difference-k/
#beats 62%
class Solution:
    def countKDifference(self, nums: List[int], k: int) -> int:
        count = 0
 
        for i in nums:
            for j in nums:
                if j-i == k:
                    count = count + 1

        return count

