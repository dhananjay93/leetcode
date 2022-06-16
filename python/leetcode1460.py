#Tags - Counter
#https://leetcode.com/problems/make-two-arrays-equal-by-reversing-sub-arrays/
#beats 98%
class Solution:
    def canBeEqual(self, target: List[int], arr: List[int]) -> bool:
        
        return Counter(target) == Counter(arr)