#Tags - ord, is digit
#https://leetcode.com/problems/replace-all-digits-with-characters/
#beats 44%
class Solution:
    def replaceDigits(self, s: str) -> str:
        output = ''
        for i,j in enumerate(s):
            if j.isdigit():
                output += chr(ord(s[i-1]) + int(j))
            else:
                output += j
        return output