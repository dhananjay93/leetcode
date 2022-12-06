#Tags - array, loop
#https://leetcode.com/problems/minimum-time-visiting-all-points/description/
#beats 76%

class Solution:
    def minTimeToVisitAllPoints(self, points: List[List[int]]) -> int:
        lenList = len(points)
        tim = 0
        for i in range(lenList-1):
            (a,b), (c,d) = points[i], points[i+1]
            tim += max(abs(a-c),abs(b-d))
        return tim