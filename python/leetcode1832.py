#Tags - isalpha, loops
#https://leetcode.com/problems/check-if-the-sentence-is-pangram/
#beats 28%
class Solution:
    def checkIfPangram(self, sentence: str) -> bool:
        lst = []

        for i in sentence:
            if i.isalpha():
                lst.append(i)

        return len(set(lst)) == 26
