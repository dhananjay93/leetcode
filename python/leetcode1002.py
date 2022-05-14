#Tags - reduce, map
#https://leetcode.com/problems/find-common-characters/
#beats 94%
class Solution:
    def twoOutOfThree(self, nums1: List[int], nums2: List[int], nums3: List[int]) -> List[int]:
        lst1, lst2, lst3 = set(nums1),set(nums2),set(nums3)
        return (lst1&lst2)|(lst2&lst3)|(lst3&lst1)