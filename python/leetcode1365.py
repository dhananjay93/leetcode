#Tags - sort, dictionary, list
#https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
#beats 68%
class Solution:
    def smallerNumbersThanCurrent(self, nums: List[int]) -> List[int]:
        sorted_num = sorted(nums)
    
        d = {}
        lst = []
        
        for i in range(len(sorted_num)):
            if sorted_num[i] not in d:
                d[sorted_num[i]] = i

        for i in nums:
            lst.append(d[i])

        return lst