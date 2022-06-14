#Tags - Counter, string, hashtable
#https://leetcode.com/problems/check-if-number-has-equal-digit-count-and-digit-value/
#beats 33%
class Solution:
    def digitCount(self, num: str) -> bool:
        from collections import Counter

        count_ = Counter(num)
        
        for i in range(len(num)):
            if int(num[i]) != count_[str(i)]:
                return False
            
        return True
