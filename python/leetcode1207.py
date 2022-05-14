#Tags - lists, loops, sets
#https://leetcode.com/problems/unique-number-of-occurrences/
#beats 17%
class Solution:
    def uniqueOccurrences(self, arr: List[int]) -> bool:
        set_ = set(arr)
        
        lst = list(set_)
        
        tst = []
        
        for i in lst:
            tst.append(arr.count(i))
        
        return len(set(tst))==len(lst)