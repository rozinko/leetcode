/**
 * 25. Reverse Nodes in k-Group
 * https://leetcode.com/problems/reverse-nodes-in-k-group/
 */

/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @param {number} k
 * @return {ListNode}
 */
var reverseKGroup = function (head, k) {
    let current = head
    if (k === 1 || head === null) return head

    for (let i = 1; i < k; i++)
        if ((current = current.next) == null) return head

    current = head
    for (let i = 1; i < k; i++) {
        let node = current.next
        current.next = node.next
        node.next = head
        head = node
    }

    current.next = reverseKGroup(current.next, k)

    return head
};