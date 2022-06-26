#Tags - function,dictionary
#https://leetcode.com/problems/maximum-number-of-balls-in-a-box/
#beats 6%
class Solution:
    def countBalls(self, lowLimit: int, highLimit: int) -> int:
        
        def getSum(n):
    
            sum_ = 0
            for digit in str(n):
                sum_ += int(digit)      
            return sum_
        
        dict_ = {}
        
        for i in range(lowLimit,highLimit+1):
            if getSum(i) not in dict_:
                dict_[getSum(i)] = 1
            else:
                dict_[getSum(i)] += 1
                
        return max(dict_.values())
