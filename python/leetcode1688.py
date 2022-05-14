#Tags -- match, sprots, while
#https://leetcode.com/problems/count-of-matches-in-tournament/
#Beats 35%
class Solution:
    def numberOfMatches(self, n: int) -> int:
        total = 0
        
        while n != 1:
            match = n//2
            total += match
            n = n - match
        
        return total 