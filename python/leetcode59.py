#Tags - strip, split, length
#https://leetcode.com/problems/length-of-last-word/
#beats 36%
class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        return len(s.strip().split(" ")[-1])