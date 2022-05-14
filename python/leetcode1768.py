# Tags Conditioning , List
#https://leetcode.com/problems/merge-strings-alternately/
#Beats 53%
class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        '''1768. Merge Strings Alternately'''
        
        word = ''

        if len(word2) == len(word1):
            for i in range(len(word1)):
                word += word1[i] + word2[i]
                
        if len(word1) < len(word2):
            m = len(word1)
            for i in range(len(word1)):
                word += (word1[i] + word2[i])
            word += word2[m:]

        if len(word2) < len(word1):
            m = len(word2)
            for i in range(len(word2)):
                word += (word1[i] + word2[i])
            word += word1[m:]
            
        
        
        return word