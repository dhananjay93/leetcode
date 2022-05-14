#Tags -- math , list, loops
#https://leetcode.com/problems/queries-on-number-of-points-inside-a-circle/
#Beats 12%
class Solution:
    def countPoints(self, points: List[List[int]], queries: List[List[int]]) -> List[int]:
        output = []
        for i in queries:
            res = 0
            for j in points:
                if (j[0]-i[0])**2 + (j[1]-i[1])**2 - i[2]**2 <= 0:
                    res += 1
            output.append(res)

        return output
