#Tags - max, list
#https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/
#beats 5%
class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        max_ = max(candies)
        return [i + extraCandies >= max_ for i in candies]