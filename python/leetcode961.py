#Tags - dictionary, conditioning
#https://leetcode.com/problems/n-repeated-element-in-size-2n-array/
#beats 40%
class Solution:
    def repeatedNTimes(self, nums: List[int]) -> int:
        
        count_ = Counter(nums)
        
        return [k for k, v in count_.items() if v > 1][0]
