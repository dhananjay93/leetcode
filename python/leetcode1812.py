#Tags - hardcoding, dictionary
#https://leetcode.com/problems/determine-color-of-a-chessboard-square/
#beats 68%
class Solution:
    def squareIsWhite(self, coordinates: str) -> bool:
        dic = {'a':1,'b':2,'c':3,'d':4,'e':5,'f':6,'g':7,'h':8}
        sum_ = 0
        for i in coordinates:
            if i in dic:
                sum_ += int(dic[i])
            else:
                sum_ += int(i)
        if sum_ % 2 == 0:
            return False
        return True