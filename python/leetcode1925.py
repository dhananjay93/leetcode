#Tags -- ifelse , strings
#https://leetcode.com/problems/count-square-sum-triples/
#Beats 17%
class Solution:
    def countTriples(self, n: int) -> int:
        result = 0
        for i in range(1,n+1):
            for j in range(1,n+1):
                k = (i**2 + j**2)**0.5
                if k <= n and k%1 == 0:
                    #print(i,j)
                    result += 1
        return result