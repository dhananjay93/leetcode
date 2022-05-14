#Tags - counter, set
#https://leetcode.com/problems/count-common-words-with-one-occurrence/
#beats 42%
class Solution:
    def areOccurrencesEqual(self, s: str) -> bool:
        return len(set(Counter(s).values())) == 1