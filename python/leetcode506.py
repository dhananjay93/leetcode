#Tags - dictionary, copy 
#https://leetcode.com/problems/relative-ranks/
#beats 67%
class Solution:
    def findRelativeRanks(self, score: List[int]) -> List[str]:
            marks = score.copy()
            score.sort(reverse= True)
            hash_ = {}
            for i in range(len(score)):
                if i == 0:
                    hash_[score[i]] = "Gold Medal"
                elif i == 1:
                    hash_[score[i]] = "Silver Medal"
                elif i == 2:
                    hash_[score[i]] = "Bronze Medal"
                else:
                    hash_[score[i]] = i+1
            relativeRanks = []
            for i in marks:
                relativeRanks.append(str(hash_[i]))

            return relativeRanks