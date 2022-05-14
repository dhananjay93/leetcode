#Tags - string, letters, indexing, reverse
#https://leetcode.com/problems/reverse-prefix-of-word/
#beats 84%
class Solution:
    def reversePrefix(self, word: str, ch: str) -> str:
        pos = -1
        for i in range(len(word)):
            if word[i] == ch:
                pos = i
                break
        
        if pos == -1:
            return word
        return word[0:pos+1][::-1] + word[pos+1:]