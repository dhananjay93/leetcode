#Tags - array, break
#https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/
#beats 30%
class Solution:
    def finalPrices(self, prices: List[int]) -> List[int]:
        res = []
        for i in range(len(prices)):
            for j in prices[i+1:len(prices)]:
                if j <= prices[i]:
                    res.append(prices[i]-j)
                    break
            if len(res) < i+1:
                res.append(prices[i])
        return res
