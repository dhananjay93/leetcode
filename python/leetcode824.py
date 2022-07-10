#Tags - string, conditioning
#https://leetcode.com/problems/goat-latin/
#beats 9%
class Solution:
    def toGoatLatin(self, sentence: str) -> str:
        
        s = sentence.split(" ")
        
        res = ''
        
        for i in range(len(s)):
            if s[i][0].lower() in ('a','e','i','o','u'):
                res += s[i] + "ma" + 'a'*(i+1) + ' '
            else:
                res += s[i][1:]+s[i][0]+"ma" + 'a'*(i+1) + ' '

        return res[:len(res)-1]