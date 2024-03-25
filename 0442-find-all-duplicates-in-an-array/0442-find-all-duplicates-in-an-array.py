class Solution:
    def findDuplicates(self, nums: List[int]) -> List[int]:
        n = len(nums)
        counter = [0 for _ in range(n+1)]
        for i in nums:
            counter[i] += 1
        return list(filter(lambda x: counter[x] == 2, list(range(0, n+1))))