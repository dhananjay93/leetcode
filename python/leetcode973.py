#Tags -- lambda, math
#https://leetcode.com/problems/k-closest-points-to-origin/
#Beats 99%
class Solution:
    def kClosest(self, points: List[List[int]], k: int) -> List[List[int]]:
        #points = [[1,3],[-2,2]]
        points.sort(key=lambda x: (x[0]**2 + x[1]**2)**0.5)
        return points[:k]