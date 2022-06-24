#Tags - Dictionary, sets
#https://leetcode.com/problems/greatest-english-letter-in-upper-and-lower-case/
#beats 77%
class Solution:
    def greatestLetter(self, s: str) -> str:
        
        count_upper = Counter(str(set(s)).upper())
        count_s = Counter(s)
        
        lst = []
        for k in count_upper:
            if count_upper[k] > 1:
                lst.append(k)
                
        repeats = {}
        for i in lst:
            if count_s[i] >= 1:
                repeats[i] = ord(i)
                
        if len(repeats) == 0:
            return ""
        return max(repeats, key= lambda x: repeats[x])
