#Tags - dictionary, keys, spliter
#https://leetcode.com/problems/group-the-people-given-the-group-size-they-belong-to/submissions/
#beats 17%
class Solution:
    def groupThePeople(self, groupSizes: List[int]) -> List[List[int]]:
        
        dict_ = {}

        for i in range(len(groupSizes)):
            if groupSizes[i] not in dict_:
                dict_[groupSizes[i]] = [i]
            else:
                dict_[groupSizes[i]] += [i]

        keys = sorted(list(dict_.keys()))
        
        def splitter(lst,n):
            return [lst[i:i + n] for i in range(0, len(lst), n)]
        
        res = []
        
        for key in keys:
            res += (splitter(dict_[key],key))

        return res