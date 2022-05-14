#Tags 

class Solution:
    def maxIncreaseKeepingSkyline(self, grid: List[List[int]]) -> int:
        
        '''Max Increase to Keep City Skyline'''
        
        # Finding  maximum from rows
        rows = [max(i) for i in grid]
        
        # Finding maximum from columns
        columns = [max(i) for i in zip(*grid)]

        output = 0

        for i in range(len(grid)):
            for j in range(len(grid)):
                # Finding minimum of maximum of rows and columns and subtracting correpsonding grid value 
                output += min(columns[j], rows[i]) - grid[i][j]
        
        return output

