#Tags - string, split
#https://leetcode.com/problems/determine-if-string-halves-are-alike/
#beats 74%
class Solution:
    def halvesAreAlike(self, s: str) -> bool:
        s = s.lower()
        len_ = int(len(s)/2)

        first = s[:len_]

        second = s[len_:]

        return first.count('a') + first.count('e') + first.count('i') + first.count('o') + first.count('u') == second.count('a') + second.count('e') + second.count('i') + second.count('o') + second.count('u')

