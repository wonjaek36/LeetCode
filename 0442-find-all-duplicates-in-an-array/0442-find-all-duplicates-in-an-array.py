class Solution:
    def findDuplicates(self, nums: List[int]) -> List[int]:
        n = len(nums)
        result = []
        counter = [0 for _ in range(n+1)]
        for i in nums:
            counter[i] += 1
            if (counter[i] > 1):
                 result.append(i)
        return result