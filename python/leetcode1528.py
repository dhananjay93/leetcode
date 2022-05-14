#Tags - string, join
#https://leetcode.com/problems/shuffle-string/
#beats 99%
class Solution:
    def restoreString(self, s: str, indices: List[int]) -> str:
        s_ = [0]*len(s)
        
        for i, j in zip(s, indices):
            s_[j] = i
        return ''.join(s_)