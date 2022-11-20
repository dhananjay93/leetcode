#Tags - math, loops
#https://leetcode.com/problems/largest-triangle-area/description/
#beats 94%

class Solution:
    def largestTriangleArea(self, points: List[List[int]]) -> float:
        
        #Reference - https://leetcode.com/problems/largest-triangle-area/solutions/1585033/python-faster-than-93-simple-maths-with-explanation/
        
        res = 0 
        l = len(points)
        for i in range(l):
            a1, b1 = points[i]
            for j in range(i+1,l):
                a2, b2 = points[j]
                for k in range(j+1,l):
                    a3, b3 = points[k]

                    out = abs(0.5*(a1*(b2-b3)+a2*(b3-b1)+a3*(b1-b2)))

                    if out > res:
                        res = out 
        
        return res
                   