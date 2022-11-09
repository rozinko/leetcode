/**
 * 19. Remove Nth Node From End of List
 * https://leetcode.com/problems/remove-nth-node-from-end-of-list/
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
 * @param {number} n
 * @return {ListNode}
 */
var removeNthFromEnd = function (head, n) {
  let result = new ListNode(0, head);
  let node = result,
    end = node.next;

  while (--n) end = end.next;
  while (end.next !== null) {
    end = end.next;
    node = node.next;
  }
  node.next = node.next.next;

  return result.next;
};
