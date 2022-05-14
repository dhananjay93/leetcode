# Tags Hardcoding, Split, Dates, Strings
#https://leetcode.com/problems/reformat-date/
#Beats 94%
class Solution:
    def reformatDate(self, date: str) -> str:
        
        '''https://leetcode.com/problems/reformat-date/'''
        
        #dictionary to retrive month index from word
        months = {'Jan':'01','Feb':'02','Mar':'03','Apr':'04','May':'05','Jun':'06',
                  'Jul':'07','Aug':'08','Sep':'09','Oct':'10','Nov':'11','Dec':'12'}
        
        #Splitting date to access each part of date
        date_ = date.split()

        
        if len(date_[0]) == 4:
            helper = date_[0][0:2]
        else:
            helper = '0'+date_[0][0]


        return (date_[2] + '-' + months[date_[1]] + '-' + helper)

