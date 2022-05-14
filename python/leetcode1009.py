#Tags - loop, bitwiseComplement
#https://leetcode.com/problems/complement-of-base-10-integer/
#beats 57%
class Solution:
    def bitwiseComplement(self, n: int) -> int:
        x = str(bin(n))[2:]
        y = ''
        for i in x:
            if i == '1':
                y = y + '0'
            else:
                y = y + '1'
        return int(y,2)