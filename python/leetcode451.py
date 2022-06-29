#Tags - keys, sort with respect to frequency
#https://leetcode.com/problems/sort-characters-by-frequency/
#beats 95%
class Solution:
    def frequencySort(self, s: str) -> str:
        
        count = Counter(s)
        
        keys = list(count.keys())
        
        res = ''
        
        keys.sort(key = lambda x:-count[x])
        
        for char in keys:
            res += count[char]*char
        
        return res