class Solution:
    def findDuplicates(self, nums: List[int]) -> List[int]:
        counter = [0 for _ in range(100001)]
        for n in nums:
            counter[n] += 1
        return list(filter(lambda x: counter[x] == 2, list(range(1, 100001))))