#Tags - min, counter
#https://leetcode.com/problems/maximum-number-of-balloons/
#beats 8%
class Solution:
    def maxNumberOfBalloons(self, text: str) -> int:
        
        count = Counter(text)
        
        return min([count['b'], count['a'], count['l']//2, count['o']//2, count['n']])