#Tags - loops, abs
#https://leetcode.com/problems/flipping-an-image/
#beats 96%
class Solution:
    def flipAndInvertImage(self, image: List[List[int]]) -> List[List[int]]:
        t = []

        for i in image:
            t.append(i[::-1])
            
        k = t

        for i in range(len(t)):
            for j in range(len(t[i])):
                k[i][j] = abs(t[i][j]-1)

        return k