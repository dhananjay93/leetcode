#Tags -- matrix, sort
#https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/
#Beats 41%
class Solution(object):
    def kWeakestRows(self, mat, k):
        """
        :type mat: List[List[int]]
        :type k: int
        :rtype: List[int]
        """
        X = {}
        for i in range(len(mat)):
            # Getting the row sum
            total_sol = sum(mat[i])

            if total_sol not in X.keys():
                X[total_sol] = []

            X[total_sol].append(i)

        mylist = sorted(X.keys())
        weakestLink = []

        for i in mylist:
            weakestLink = weakestLink + sorted(X[i])
        
        # Returning objects
        return weakestLink[0:k]   