/**
 * 160. Intersection of Two Linked Lists
 * https://leetcode.com/problems/intersection-of-two-linked-lists/
 */

/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */

/**
 * @param {ListNode} headA
 * @param {ListNode} headB
 * @return {ListNode}
 */
var getIntersectionNode = function (headA, headB) {
    let countA = 0, countB = 0
    let curA = headA, curB = headB

    while (curA = curA.next) countA++
    while (curB = curB.next) countB++

    while (countA > countB) {
        headA = headA.next
        countA--
    }

    while (countB > countA) {
        headB = headB.next
        countB--
    }

    while (headA !== headB) {
        headA = headA.next
        headB = headB.next
    }

    return headA
};