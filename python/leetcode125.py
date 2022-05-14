#Tags - is alpha, is digit, reverse comparison
#https://leetcode.com/problems/valid-palindrome/
#beats 50%
class Solution:
    def isPalindrome(self, s: str) -> bool:
        n = ''
        for i in s:
            if i.isalpha() or i.isdigit():
                n = n + i.lower()
        return n == n[::-1]