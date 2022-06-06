#Tags - function, loop, set, string
#https://leetcode.com/problems/unique-email-addresses/submissions/
#beats 17%
class Solution:
    def numUniqueEmails(self, emails: List[str]) -> int:
        def clearemail(string):
            splt = string.split('@')
            local = splt[0]
            domain = splt[1]
            local = local.replace(".","")
            local = local.split('+')[0]
            return local + '@' + domain

        res = []

        for i in emails:
            res.append(clearemail(i))

        return len(set(res))
