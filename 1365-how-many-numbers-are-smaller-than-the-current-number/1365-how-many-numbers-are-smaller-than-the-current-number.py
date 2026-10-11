class Solution:
    def smallerNumbersThanCurrent(self, nums: list[int]) -> list[int]:
       ans=[]
       for i in nums:
           c=0
           for j in nums:
                if i>j:
                    c=c+1
           ans.append(c)

       return ans           