#Tags - bins, loops
#https://leetcode.com/problems/counting-bits/
#beats 68%
class Solution:
    def countBits(self, n: int) -> List[int]:
        
        #Create a list. Output will be appended to this lst
        lst = []
        
        #take range from 0 to n+1 as python excludes last element in the range
        for i in range(0,n+1):
        #bin helps in converting decimal to binary and then count the occurences of 1
            lst.append((bin(i)[2:]).count('1'))

        return lst