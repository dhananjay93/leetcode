#Tags - array
#https://leetcode.com/problems/destination-city/
#beats 66%
class Solution:
    def destCity(self, paths: List[List[str]]) -> str:
        lst = []
        origin = []
        for i in paths:
            lst.append(i[1])
            origin.append(i[0])


        for i in lst:
            if i in origin:
                continue
            else:
                return i
