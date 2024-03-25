# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next

class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        result = ListNode(0)
        current = result
        carry = 0
        remainder = 0
        l1_p = l1
        l2_p = l2
        
        while True:
            l1_val = l1_p.val if l1_p is not None else 0
            l2_val = l2_p.val if l2_p is not None else 0
            
            carry = (remainder + l1_val + l2_val) // 10
            remainder = (remainder + l1_val + l2_val) % 10
            current.val = remainder
            remainder = carry

            l1_p = l1_p.next if(l1_p is not None) else None
            l2_p = l2_p.next if(l2_p is not None) else None
            if remainder == 0 and l1_p is None and l2_p is None:
                break
                
            current.next = ListNode(0)
            current = current.next
            
        return result