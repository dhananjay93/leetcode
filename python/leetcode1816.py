#Tags - string splt, list
#https://leetcode.com/problems/truncate-sentence/
#beats 11%
class Solution:
    def truncateSentence(self, s: str, k: int) -> str:
        
        lst = s.split()
        
        if k >= len(lst):
            return s
        else:  
            lst = lst[0:k]
            return ' '.join(lst)
