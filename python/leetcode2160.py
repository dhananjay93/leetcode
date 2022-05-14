#Tags - sorted, list
#https://leetcode.com/problems/minimum-sum-of-four-digit-number-after-splitting-digits/
#beats 94%
class Solution:
    def minimumSum(self, num: int) -> int:
        numList = sorted([int(digit) for digit in str(num)])
        return (numList[0]*10 + numList[1]*10 + numList[2] + numList[3])