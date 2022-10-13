#Tags - string
#https://leetcode.com/problems/remove-vowels-from-a-string/description/
#beats 54%

class Solution:
    def removeVowels(self, s: str) -> str:
        res = ''

        for i in s:
            if i not in ['a','e','i','o','u']:
                res += i 
        
        return res