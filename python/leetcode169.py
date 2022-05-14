#Tags - dictionary, counter
#https://leetcode.com/problems/majority-element/
#beats 93%
class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        d = {}
        
        for i in nums:
            if i not in d:
                d[i] = 1
            else:
                d[i] = d[i] + 1
        
        if max(d.values()) > len(nums)/2:
            return max(zip(d.values(), d.keys()))[1]