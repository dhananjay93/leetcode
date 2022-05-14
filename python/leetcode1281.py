#Tags - numbers, math
#https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/
#beats 55%
class Solution:
    def subtractProductAndSum(self, n: int) -> int:
        res = [int(x) for x in str(n)]

        prod = 1
        sum_ = 0
        for i in res:
            prod = prod*i
            sum_ = sum_ + i

        return (prod-sum_)    