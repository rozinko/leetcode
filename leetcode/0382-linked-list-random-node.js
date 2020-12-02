/**
 * 382. Linked List Random Node
 * https://leetcode.com/problems/linked-list-random-node/
 *
 * https://leetcode.com/problems/linked-list-random-node/discuss/957399/PHP-JavaScript-Swift-O(n)-time-O(1)-space-reservoir-sampling
 *
 * Reservoir sampling
 */

/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param head The linked list's head.
 Note that the head is guaranteed to be not null, so it contains at least one node.
 * @param {ListNode} head
 */
var Solution = function (head) {
    this.head = head;
};

/**
 * Returns a random node's value.
 * @return {number}
 */
Solution.prototype.getRandom = function () {
    let i = 0, val;
    let node = this.head;

    while (node) {
        i++;
        if (Math.floor(Math.random() * i) + 1 === i) val = node.val;
        node = node.next;
    }

    return val;
};

/**
 * Your Solution object will be instantiated and called as such:
 * var obj = new Solution(head)
 * var param_1 = obj.getRandom()
 */