#Tags - list, conditioning
#https://leetcode.com/problems/partition-array-according-to-given-pivot/
#beats 38%
class Solution:
    def pivotArray(self, nums: List[int], pivot: int) -> List[int]:
        
        smaller = []
        larger = []
        equal = []
        
        for i in nums:
            if i < pivot:
                smaller.append(i)
            elif i > pivot:
                larger.append(i)
            else:
                equal.append(i)
                
        return smaller+equal+larger
