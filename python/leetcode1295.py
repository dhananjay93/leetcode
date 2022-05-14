#Tags - string, length
#https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
#beats 39%
class Solution:
    def findNumbers(self, nums: List[int]) -> int:
        count = 0
        for i in nums:
            if len(str(i))%2 == 0:
                count += 1
                
        return count