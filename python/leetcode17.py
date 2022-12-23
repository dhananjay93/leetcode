#Tags - list, hashtable
#https://leetcode.com/problems/letter-combinations-of-a-phone-number/description/
#beats 85%

class Solution:
    def letterCombinations(self, digits: str) -> List[str]:

        dic = {'2':['a','b','c'],'3':['d','e','f'],'4':['g','h','i'],
        '5':['j','k','l'],'6':['m','n','o'],'7':['p','q','r','s'],
        '8':['t','u','v'],'9':['w','x','y','z'],"":[]}

        for i in digits:
            print(dic[i])

        last=['']

        res = []

        for i in digits:
            res=[]
            for j in dic[i]:
                res+=[k+j for k in last]
            last=res

        return res 