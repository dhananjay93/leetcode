#Tags - list subset, loops
#https://leetcode.com/problems/arithmetic-slices/
#beats 21%
class Solution:
    def prefixCount(self, words: List[str], pref: str) -> int:
        sum_ = 0
        for i in words:
            if i[0:len(pref)] == pref:
                sum_ += 1

        return sum_  