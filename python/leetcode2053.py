#Tags - array
#https://leetcode.com/problems/kth-distinct-string-in-an-array/
#beats 11%
class Solution:
    def kthDistinct(self, arr: List[str], k: int) -> str:
        lst = []
        for i in arr:
            if arr.count(i) == 1:
                lst.append(i)
        if k > len(lst):
            return ""
        return lst[k-1]
