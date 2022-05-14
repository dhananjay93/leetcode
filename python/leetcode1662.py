#Tags - strings, comparison
#https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/
#beats 7%
class Solution:
    def arrayStringsAreEqual(self, word1: List[str], word2: List[str]) -> bool:
        
        s1 = ''
        s2 = ''

        for i in word1:
            s1 = s1 + i

        for i in word2:
            s2 = s2 + i

        return (s1 == s2)