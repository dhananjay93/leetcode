# Tags isdigit, math, string
#https://leetcode.com/problems/check-if-numbers-are-ascending-in-a-sentence/
#Beats 63%
class Solution:
    def areNumbersAscending(self, s: str) -> bool:
        s = s.split()

        num = []

        for i in s:
            if i.isdigit():
                num.append(i)

        for i in range(len(num)-1):
            if  int(num[i+1]) <= int(num[i]):
                return False
        return True