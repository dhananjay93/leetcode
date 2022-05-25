#Tags - min max, list comprehension
#https://leetcode.com/problems/number-of-rectangles-that-can-form-the-largest-square/submissions/
#beats 79%
class Solution:
    def countGoodRectangles(self, rectangles: List[List[int]]) -> int:
        
        min_lengths = [min(i) for i in rectangles]
        max_length = max(min_lengths)
        
        return min_lengths.count(max_length)