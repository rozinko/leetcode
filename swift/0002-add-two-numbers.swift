/**
 * 2. Add Two Numbers
 * https://leetcode.com/problems/add-two-numbers/
 */


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2
        var oneInMemory = false
        let ans: ListNode? = .init(0)
        var current: ListNode? = ans
        
        while list1 != nil || list2 != nil || oneInMemory {
            let newValue = (list1?.val ?? 0) + (list2?.val ?? 0) + (oneInMemory ? 1 : 0)

            oneInMemory = newValue >= 10

            current!.next = .init(newValue % 10)
            current = current!.next

            list1 = list1?.next
            list2 = list2?.next
        }

        return ans!.next
    }
}