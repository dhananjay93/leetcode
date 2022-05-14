# Tags indexing alphabets, list , string
#https://leetcode.com/problems/delete-columns-to-make-sorted/
#Beats 47%
class Solution:
    def minDeletionSize(self, strs: List[str]) -> int:
        count=0

        for i in range(len(strs[0])):
            for j in range(len(strs)-1):
                if ord(strs[j][i]) > ord(strs[j+1][i]):
                    count += 1
                    break

        return count