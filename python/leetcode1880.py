#Tags - ord , function
#https://leetcode.com/problems/check-if-word-equals-summation-of-two-words/
#beats 97%
class Solution:
    def isSumEqual(self, firstWord: str, secondWord: str, targetWord: str) -> bool:
        def nmber(word):
            res = ''
            for i in word:
                res += str(ord(i)-97)
            return int(res)
        
        return nmber(firstWord) +  nmber(secondWord) == nmber(targetWord)