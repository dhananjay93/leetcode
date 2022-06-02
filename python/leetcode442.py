#Tags - Counter, loop, hashtable
#https://leetcode.com/problems/find-all-duplicates-in-an-array/submissions/
#beats 99%
class Solution:
    def findDuplicates(self, nums: List[int]) -> List[int]:
        
        count_ = Counter(nums)
        res = []
        for key in count_:
            if count_[key] > 1:
                res.append(key)

        return res