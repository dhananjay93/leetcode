#Tags - list append, string
#https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/
#beats 84%
class Solution:
    def mostWordsFound(self, sentences: List[str]) -> int:
        len_ = []
        
        for i in sentences:
            len_.append(len(i.split()))

        return max(len_)
