/**
 * 21. Merge Two Sorted Lists
 * https://leetcode.com/problems/merge-two-sorted-lists/
 */

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1, l2 = l2, l3: ListNode? = ListNode()
        var result = l3

        while l1 != nil || l2 != nil {
            var node: ListNode? = ListNode()

            if (l1 != nil && l2 != nil && l1!.val < l2!.val) || (l1 != nil && l2 == nil) {
                (node, l1) = (l1!, l1!.next)
            } else {
                (node, l2) = (l2!, l2!.next)
            }

            node?.next = nil
            l3?.next = node
            l3 = l3?.next
        }

        return result?.next
    }
}