#Tags - array, xor
#https://leetcode.com/problems/decode-xored-array/
#beats 31%
class Solution:
    def decode(self, encoded: List[int], first: int) -> List[int]:
        
        res = [first]
        
        for i in encoded:
            res.append(i ^ res[-1])
        
        return res