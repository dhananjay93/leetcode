#Tags -- math ,lambda
#https://leetcode.com/problems/sort-array-by-parity/
#Beats 17%
class Solution:
    def sortArrayByParity(self, nums: List[int]) -> List[int]:
        even = list(filter(lambda x: x % 2 == 0, nums))
        odd = list(filter(lambda x: x % 2 != 0, nums))
        return even + odd
