#Tags - list
#https://leetcode.com/problems/first-letter-to-appear-twice/description/
#beats 35%

class Solution:
    def repeatedCharacter(self, s: str) -> str:
        lst = []

        for i in s:
            if i not in lst:
                lst.append(i)
            else:
                return i        