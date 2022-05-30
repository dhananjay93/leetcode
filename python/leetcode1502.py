#Tags - sort, array
#https://leetcode.com/problems/can-make-arithmetic-progression-from-sequence/
#beats 73%
class Solution:
    def canMakeArithmeticProgression(self, arr: List[int]) -> bool:
        
        arr.sort()
        diff = arr[0] - arr[1]
        for i in range(len(arr)-1):
            if arr[i] - arr[i+1] != diff:
                return False
        return True