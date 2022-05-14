#Tags - list, loop, max
#https://leetcode.com/problems/find-the-highest-altitude/
#beats 74%
class Solution:
    def largestAltitude(self, gain: List[int]) -> int:
        lst = [0]
        for i in range(len(gain)):
            lst.append(lst[i]+gain[i])
        return max(lst)