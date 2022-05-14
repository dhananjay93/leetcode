#Tags -- loops
#https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
#Beats 6%
class Solution:
    def countNegatives(self, grid: List[List[int]]) -> int:
        count = 0
        for i in grid:
            for j in i:
                if j < 0:
                    count += 1
        return count