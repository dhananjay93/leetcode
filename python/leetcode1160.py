#Tags - Counter, intersection
#https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/submissions/
#beats 6%
class Solution:
    def countCharacters(self, words: List[str], chars: str) -> int:
        
        from collections import Counter

        char = Counter(chars)
        output = 0
        for i in words:
            w = Counter(i)
            if w & char == w:
                output += len(i)
        return output