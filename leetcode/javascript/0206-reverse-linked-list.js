/**
 * 206. Reverse Linked List
 * https://leetcode.com/problems/reverse-linked-list/
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
 * @return {ListNode}
 */
var reverseList = function (head) {
  let reversed = null;
  while (head) {
    let node = head;
    head = head.next;
    node.next = reversed;
    reversed = node;
  }
  return reversed;
};
