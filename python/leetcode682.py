#Tags - array, conditioning
#https://leetcode.com/problems/baseball-game/
#beats 34%
class Solution:
    def calPoints(self, ops: List[str]) -> int:
        res = []
        for i in range(len(ops)):
            if ops[i] != "C"  and ops[i] != "D" and ops[i] != "+":
                res.append(int(ops[i]))
            if ops[i] == "C":
                res.pop()
            if ops[i] == "D":
                res.append(int(res[-1])*2)
            if ops[i] == "+":
                res.append(int(res[-1]) + int(res[-2]))

        return sum(res)


