#Tags - set, minimum
#https://leetcode.com/problems/distribute-candies/
#beats 14%
class Solution:
    def distributeCandies(self, candyType: List[int]) -> int:
        return min(len(set(candyType)),len(candyType)//2)