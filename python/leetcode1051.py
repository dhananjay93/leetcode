#Tags -- copy, sort
#https://leetcode.com/problems/height-checker/
#Beats 91%
class Solution:
    def heightChecker(self, heights: List[int]) -> int:
        expected = heights.copy()
        expected.sort()
        count = 0
        
        for i in range(len(heights)):
            if expected[i] != heights[i]:
                count += 1
            
        return count