#Tags - sets, arrays
#https://leetcode.com/problems/find-the-difference-of-two-arrays/submissions/
#beats 64%
class Solution:
    def findDifference(self, nums1: List[int], nums2: List[int]) -> List[List[int]]:
        
        l1 = list(set(nums1) - set(nums2))

        l2 = list(set(nums2) - set(nums1))

        res = []

        res.append(l1)
        res.append(l2)

        return res