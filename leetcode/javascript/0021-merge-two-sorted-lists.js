/**
 * 21. Merge Two Sorted Lists
 * https://leetcode.com/problems/merge-two-sorted-lists/
 */

/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} list1
 * @param {ListNode} list2
 * @return {ListNode}
 */
var mergeTwoLists = function (list1, list2) {
  let head = new ListNode(),
    last = head;

  while (list1 && list2) {
    if (list1.val <= list2.val) {
      last.next = list1;
      list1 = list1.next;
    } else {
      last.next = list2;
      list2 = list2.next;
    }
    last = last.next;
  }

  last.next = list1 ?? list2;

  return head.next;
};
