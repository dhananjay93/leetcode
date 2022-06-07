#Tags - string, ord, list
#https://leetcode.com/problems/unique-morse-code-words/submissions/
#beats 38%
class Solution:
    def uniqueMorseRepresentations(self, words: List[str]) -> int:
        
        morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        
        lst = []
        for i in words:
            a = ''
            for j in i:
                a += morse[ord(j) - 97]
            lst.append(a)
        
        return len(set(lst))
