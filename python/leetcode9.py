#Tags - palidrome
#https://leetcode.com/problems/palindrome-number/
#beats 90%
class Solution:
    def isPalindrome(self, x: int) -> bool:
        if str(x) == str(x)[::-1]:
            return True
        else:
            return False