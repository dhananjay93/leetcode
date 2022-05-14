#Tags - list, xor
#https://leetcode.com/problems/xor-operation-in-an-array/
#beats 55%
class Solution:
    def xorOperation(self, n: int, start: int) -> int:
        lst = []
        for i in range(n):
            lst.append(start + i*2)
        out = lst[0]
        for i in range(len(lst)-1):
            out = out^lst[i+1]
        return out