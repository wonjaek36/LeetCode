class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        length = len(s)
        max_length = 0
        
        for i in range(length):
            chars = set()
            count = 0
            while i+count < length and s[i+count] not in chars:
                chars.add(s[i+count])
                count += 1
                max_length = max(count, max_length)
                
        return max_length
            
            