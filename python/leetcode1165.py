#Tags - enumerate, strings
#https://leetcode.com/problems/single-row-keyboard/description/
#beats 34%

class Solution:
    def calculateTime(self, keyboard: str, word: str) -> int:
        dic = {}
        for i, j in enumerate(keyboard):
            dic[j] = i 
        
        res = dic[word[0]]
        for i in range(len(word)-1):
            res += abs(dic[word[i]] - dic[word[i+1]])
        
        return res