#Tags - sets, arrays, counter
#https://leetcode.com/problems/divide-array-into-equal-pairs/submissions/
#beats 29%
class Solution:
    def divideArray(self, nums: List[int]) -> bool:
        unique = list(set(nums))

        #from collections import Counter

        count = Counter(nums)

        for i in unique:
            if count[i] % 2 == 1:
                return False
        
        return True
