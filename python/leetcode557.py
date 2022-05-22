#Tags - rstrip , split
#https://leetcode.com/problems/reverse-words-in-a-string-iii/submissions/
#beats 38%
class Solution:
    def reverseWords(self, s: str) -> str:
        lst = s.split(' ')
        
        a = ''
        for i in lst:
            a = a + (i[::-1]) + ' '

        return a.rstrip(a[-1])