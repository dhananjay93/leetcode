#Tags - strings, dictionary, loops
#https://leetcode.com/problems/sorting-the-sentence/
#beats 23%
class Solution:
    def sortSentence(self, s: str) -> str:
        
        s = s.split(' ')
        name = []
        rank = []
        for i in s:
            name.append(i[:-1])
            rank.append(int(i[-1]))

        res = {rank[i]: name[i] for i in range(len(rank))}

        output = ''
        for i in range(len(rank)):
            output+=str(res[i+1])
            if i!= len(rank)-1:
                output+=' '
            
        return output