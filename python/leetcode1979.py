#Tags - hcf, maths
#https://leetcode.com/problems/find-greatest-common-divisor-of-array/
#beats 55%
class Solution:
    def findGCD(self, nums: List[int]) -> int:
        j = min(nums)
        k = max(nums)
        
        if k%j == 0:
            return j
        
        hcf = 0
        
        for i in range(1,j):
            if k%i == 0:
                if j%i == 0:
                    hcf = i
                    
        
        return hcf