#Tags - Counter, loop, string
#https://leetcode.com/problems/first-unique-character-in-a-string/submissions/
#beats 50%
class Solution:
    def firstUniqChar(self, s: str) -> int:
        
        count =  Counter(s)

        for i in range(len(s)):
        
            if count[s[i]] == 1:
                return i
        return -1