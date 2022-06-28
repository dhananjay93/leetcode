#Tags - base, while 
#https://leetcode.com/problems/sum-of-digits-in-base-k/
#beats 75%
class Solution:
    def sumBase(self, n: int, k: int) -> int:
        
        if n < k:
            return n
        
        sum_ = 0

        while(n):
            sum_ += n % k 
            n //= k 
            
        return sum_