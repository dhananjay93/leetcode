class Solution:
    def checkString(self, s: str) -> bool:
        '''2124. Check if All A's Appears Before All B'''
        a_max = 0
        for i in range(len(s)):
            if s[i] == 'a':
                a_max = i

        b_min = 0
        for i in range(len(s)):
            if s[i] == 'b':
                b_min = i
                break
        
        if s.count('b') == 0:
            return True
        return b_min >= a_max
