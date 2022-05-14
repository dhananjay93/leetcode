#Tags - ifelse, loops
#https://leetcode.com/contest/weekly-contest-277/problems/rearrange-array-elements-by-sign/
#beats 21%
class Solution:
    def rearrangeArray(self, nums: List[int]) -> List[int]:
        lst1 = []
        lst2 = []
        lst3 = []
        for i in nums:
            if i > 0:
                lst1.append(i)
            else:
                lst2.append(i)

        for i in range(len(nums)):
            if i % 2 == 0:
                lst3.append(lst1[i//2])
            else:
                lst3.append(lst2[(i-1)//2])
        return lst3
