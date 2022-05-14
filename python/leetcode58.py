#Tags - string , split
#https://leetcode.com/problems/length-of-last-word/
#beats 23%
class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        return len(s.split()[-1])