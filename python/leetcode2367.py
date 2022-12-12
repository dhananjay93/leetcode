#Tags - list, in
#https://leetcode.com/problems/number-of-arithmetic-triplets/description/
#beats 73%

class Solution:
    def arithmeticTriplets(self, nums: List[int], diff: int) -> int:
        res = 0

        for i in nums:
            if (i + diff) in nums and (i+2*diff) in nums:
                res += 1 

        return res