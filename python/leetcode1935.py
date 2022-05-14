#Tags - list, break, string
#https://leetcode.com/problems/maximum-number-of-words-you-can-type/
#beats 22%
class Solution:
    def canBeTypedWords(self, text: str, brokenLetters: str) -> int:
        count = 0

        for i in text.split():
            for j in brokenLetters:
                if j in i:
                    break
            else:
                count = count + 1

        return count