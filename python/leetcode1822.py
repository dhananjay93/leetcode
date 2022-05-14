#Tags -- maths, product, sum
#https://leetcode.com/problems/sign-of-the-product-of-an-array/
#Beats 51%
class Solution:
    def arraySign(self, nums: List[int]) -> int:
        prod = 1
        for i in nums:
            prod *= i
        if prod >0:
            return 1
        elif prod<0:
            return -1
        return 0