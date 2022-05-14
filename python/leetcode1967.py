#Tags - array, counter
#https://leetcode.com/problems/number-of-strings-that-appear-as-substrings-in-word/
#beats 29%
class Solution:
    def numOfStrings(self, patterns: List[str], word: str) -> int:
        count = 0
        for i in patterns:
            if i in word:
                count += 1
                
        return count

