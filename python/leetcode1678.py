#Tags - string , replace
#https://leetcode.com/problems/goal-parser-interpretation/
#beats 19%
class Solution:
    def interpret(self, command: str) -> str:
        
        command = command.replace("()",'o')
        command = command.replace("(al)",'al')
        
        return command