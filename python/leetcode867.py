#Tags -- numpy
#https://leetcode.com/problems/transpose-matrix/
#Beats 90%
class Solution:
    def transpose(self, matrix: List[List[int]]) -> List[List[int]]:
        import numpy as np
        return np.array(matrix).transpose()