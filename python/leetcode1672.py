#Tags - list
#https://leetcode.com/problems/richest-customer-wealth/
#beats 87%
class Solution:
    def maximumWealth(self, accounts: List[List[int]]) -> int:
        j = []
        for i in accounts:
            j.append(sum(i))
        return max(j)