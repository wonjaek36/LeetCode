class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        charLocations = {}
        start = 0
        max_length = 0
        
        for idx, char in enumerate(s):
            if char in charLocations:
                start = max(start, charLocations[char] + 1)
            charLocations[char] = idx
            max_length = max(max_length, idx - start + 1)
        return max_length
            