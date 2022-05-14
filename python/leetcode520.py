#Tags - upper, lower check
#https://leetcode.com/problems/detect-capital/
#beats 46%
class Solution:
    def detectCapitalUse(self, word: str) -> bool:
        if word.upper() == word:
            return True
        elif word[1:].lower() == word[1:]:
            return True
        else:
            return False