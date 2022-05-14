#Tags - ifelse, loops
#https://leetcode.com/contest/weekly-contest-277/problems/find-all-lonely-numbers-in-the-array/
#beats 9%
class Solution:
    def findLonely(self, nums: List[int]) -> List[int]:
        nums = sorted(nums)
        lst_ = []
        for i in range(len(nums)):
            if len(nums) == 1:
                lst_.append(nums[0])
            elif i == 0 and nums[1] not in [nums[0]-1,nums[0],nums[0]+1]:
                lst_.append(nums[0])
            elif i == len(nums) - 1:
                if nums[-2] not in [nums[-1]-1,nums[-1],nums[-1]+1] :
                    lst_.append(nums[-1])
            elif nums[i+1] not in [nums[i]-1,nums[i],nums[i]+1] and nums[i-1] not in [nums[i]-1,nums[i],nums[i]+1]:
                lst_.append(nums[i])
            continue


        return lst_