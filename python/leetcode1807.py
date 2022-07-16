#Tags - dictionary, conditioning, extracting letters between symbols
#https://leetcode.com/problems/evaluate-the-bracket-pairs-of-a-string/
#beats 87%
class Solution:
    def evaluate(self, s: str, knowledge: List[List[str]]) -> str:
        
        # create dictionary of knowledge
        dict_ = dict(knowledge)

        res = ''
        #to handle exception when key is not available in dictionary
        start = None
        for i,j in enumerate(s):
            if j == "(":
                start = i 
            elif j == ")":
                # extracting the string between brackets
                key = s[start+1:i]
                if key in dict_:
                    res += dict_[key]
                else:
                    res += "?"
                start = None
            elif start == None:
                res += j

        return res
        