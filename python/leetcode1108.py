#Tags - replace
#https://leetcode.com/problems/defanging-an-ip-address/
#beats 29%
class Solution:
    def defangIPaddr(self, address: str) -> str:
        return address.replace(".", "[.]")