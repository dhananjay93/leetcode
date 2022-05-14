#Tags - reverse, palindromic
#https://leetcode.com/problems/find-first-palindromic-string-in-the-array/
#beats 58%
class Solution:
    def firstPalindrome(self, words: List[str]) -> str:
        for i in words:
            if i == i[::-1]:
                return i
            else:
                continue
        return ""
