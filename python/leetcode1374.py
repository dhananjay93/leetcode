#Tags - math
#https://leetcode.com/problems/generate-a-string-with-characters-that-have-odd-counts/
#beats 35%
class Solution:
    def generateTheString(self, n: int) -> str:
        if n%2 ==0:
            return 'x'*(n-1) + 'y'
        return 'x'*n