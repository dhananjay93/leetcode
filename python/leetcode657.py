#Tags - OR AND Counter
#https://leetcode.com/problems/robot-return-to-origin/
#beats 64%
class Solution:
    def judgeCircle(self, moves: str) -> bool:
        count_ = Counter(moves)
        
        if ('U' in count_ or 'D' in count_) and count_['U'] != count_['D']:
            return False
        
        if ('L' in count_ or 'R' in count_) and count_['L'] != count_['R']:
            return False
        
        return True
