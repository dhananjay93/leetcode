#Tags - dictionary, del
#https://leetcode.com/problems/custom-sort-string/
#beats 51%
class Solution:
    def customSortString(self, order: str, s: str) -> str:
        
        count = Counter(s)
        
        res = ''
        out = ''
        for i in order:
            if i in s:
                res += i*count[i]
                del count[i]
        
        for j in count:
            res += j*count[j]
        
        return res
        