--Tags Temp converter  
--https://leetcode.com/problems/convert-the-temperature/description/
--beats 50%
--Write your MySQL query statement below

class Solution:
    def convertTemperature(self, celsius: float) -> List[float]:
        return [celsius + 273.15,celsius * 1.80 + 32.00]