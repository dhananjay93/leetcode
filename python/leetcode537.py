#Tags - array, strings, split
#https://leetcode.com/problems/complex-number-multiplication/submissions/
#beats 42%
class Solution:
    def complexNumberMultiply(self, num1: str, num2: str) -> str:
        real1 = int(num1.split('+')[0])
        real2 = int(num2.split('+')[0])

        img1 = int(num1.split('+')[1].split('i')[0])
        img2 = int(num2.split('+')[1].split('i')[0])

        return str(real1*real2 - img1*img2) + '+' + str(real1*img2 + real2*img1) + 'i'
