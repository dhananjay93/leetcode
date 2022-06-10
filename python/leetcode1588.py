#Tags - step range, array, math
#https://leetcode.com/problems/sum-of-all-odd-length-subarrays/
#beats 24%
class Solution:
    def sumOddLengthSubarrays(self, arr: List[int]) -> int:
        
        sum_ = 0
        
        for odd in range(1,len(arr)+1,2):
            for i in range(len(arr)-odd+1):
                sum_ += sum(arr[i:i+odd])

        return sum_
