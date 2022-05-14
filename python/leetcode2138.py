#Tags - Lists
#https://leetcode.com/contest/weekly-contest-276/problems/divide-a-string-into-groups-of-size-k/
#beats 21%
class Solution:
    def divideString(self, s: str, k: int, fill: str) -> List[str]:
        lst = []
        for i in range(0, len(s), k):
            lst.append(s[i : i + k])

        if len(lst[-1])%k != 0:
            lst[-1] = (lst[-1] + (k-len(lst[-1]))*fill)

        return lst  