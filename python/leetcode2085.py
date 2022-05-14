#Tags - list, sets, intersection
#https://leetcode.com/problems/count-common-words-with-one-occurrence/
#beats 5%
class Solution:
    def countWords(self, words1: List[str], words2: List[str]) -> int:
        
        lst1 = []
        lst2 = []
        
        for i in words1:
            if words1.count(i) == 1:
                lst1.append(i)
                
        for i in words2:
            if words2.count(i) == 1:
                lst2.append(i)
        
        return len(set(lst1).intersection(set(lst2)))