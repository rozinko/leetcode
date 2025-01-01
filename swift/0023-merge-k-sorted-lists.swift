/**
 * 23. Merge k Sorted Lists
 * https://leetcode.com/problems/merge-k-sorted-lists/
 **/

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
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        let head: ListNode? = ListNode()
        var cur: ListNode? = head, lists = lists

        while lists.count > 0 {
            while lists.count > 0 && lists[lists.count-1] == nil { lists.popLast() }
            if lists.isEmpty { break }

            var nextIndex: Int?, i = 0
            while i < lists.count {
                if lists[i] != nil {
                    if nextIndex == nil || lists[i]!.val < lists[nextIndex!]!.val {
                        nextIndex = i
                    }
                }
                i += 1
            }

            cur!.next = lists[nextIndex!]
            cur = cur?.next
            lists[nextIndex!] = lists[nextIndex!]!.next
        }

        return head!.next
    }
}