#Tags - array, int to string, 32 bit
#https://leetcode.com/problems/reverse-integer/
#beats 9%
class Solution:
    def reverse(self, x: int) -> int:
        
        l = str(x)

        if l[0] == '-':
            res = int('-' + l[::-1][:-1])
        else:
            res = int(l[::-1])

        if res in range(-2**31, 2**31-1):
            return res
        return 0