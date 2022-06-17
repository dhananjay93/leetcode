#Tags - hashtable, lists, strings
#https://leetcode.com/problems/rings-and-rods/
#beats 23%
class Solution:
    def countPoints(self, rings: str) -> int:
        rods = []
        colors = [] 
        for i in range(len(rings)):
            if i%2 == 0:
                colors.append(rings[i])
            else:
                rods.append(rings[i])
        
        dict_ = {}
        
        for i in range(len(rods)):
            if rods[i] not in dict_:
                dict_[rods[i]] = colors[i]
            else:
                dict_[rods[i]] += colors[i]
        
        
        res = 0
        
        for key in dict_:
            if len(set(dict_[key])) == 3:
                res +=1
        
        return res