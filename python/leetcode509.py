#Tags -- dynamic programming
#https://leetcode.com/problems/fibonacci-number/
#Beats 17%
class Solution:
    def fib(self, n: int) -> int:
        if n <= 1:
            return n
        else:
            return self.fib(n-1)+self.fib(n-2)
