#Tags - string, replace
#https://leetcode.com/problems/maximum-69-number/
#beats 82%
class Solution:
    def maximum69Number (self, num: int) -> int:
        num = str(num)
        
        num = num.replace('6','9',1)
        
        return num