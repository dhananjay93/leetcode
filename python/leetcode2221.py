#Tags -- list comprehension , list, loops
#https://leetcode.com/problems/find-triangular-sum-of-an-array/
#Beats 67%
class Solution:
    def triangularSum(self, nums: List[int]) -> int:
        
        #declaring a temporary list
        temp = []
        
        #nums will get updated with the new list which we get after adding taking unit digit
        while len(nums) != 1:
            for i in range(len(nums)-1):
                temp.append((nums[i]+nums[i+1])%10)
            nums = temp[:]
            temp = []

        return nums[0]

        

