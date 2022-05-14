#Tags - list, string, reverse string
#https://leetcode.com/problems/reverse-string/
#beats 37%
class Solution:
    def reverseString(self, s: List[str]) -> None:
        """
        Do not return anything, modify s in-place instead.
        """
        i = 0
        j = len(s)-1  #length of string - 1
        
        while(i < j):
            s[j],s[i] = s[i],s[j]
            i = i + 1
            j = j - 1