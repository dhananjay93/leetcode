#Tags - Counter, array, hashtable
#https://leetcode.com/problems/find-players-with-zero-or-one-losses/
#beats 46%
class Solution:
    def findWinners(self, matches: List[List[int]]) -> List[List[int]]:
        
        from collections import Counter
        
        #Getting list of all the players and storing into checker
        winners  = []
        losers = []
        for i in matches:
            winners.append(i[0])
            losers.append(i[1])
        
        checker = sorted(list(set(winners + losers)))
        
        #Count of losers
        count_ = Counter(losers)
        
        winners  = []
        losers = []
        
        # If player is not present in loser he is winner else loser 
        for i in checker:
            if count_[i] == 1:
                losers.append(i)
            elif i not in count_:
                winners.append(i)
        return [winners, losers]
