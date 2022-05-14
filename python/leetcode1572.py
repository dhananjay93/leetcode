#Tags - matrix, maths
#https://leetcode.com/problems/matrix-diagonal-sum/
#beats 48%
class Solution:
    def diagonalSum(self, mat: List[List[int]]) -> int:
        sum_ = 0

        for i in range(len(mat)):
            for j in range(len(mat[i])):
                if i == j or i + j == len(mat[i])-1:
                    sum_ += mat[i][j]

        return sum_