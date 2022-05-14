#Tags - conditioning
#https://leetcode.com/problems/final-value-of-variable-after-performing-operations/
#beats 38%
class Solution:
    def finalValueAfterOperations(self, operations: List[str]) -> int:
        output = 0

        for i in operations:
            if '-' in i:
                output = output - 1
            else:
                output = output + 1
        return output