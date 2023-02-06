/**
 * 117. Populating Next Right Pointers in Each Node II
 * https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii/
 */

/**
 * // Definition for a Node.
 * function Node(val, left, right, next) {
 *    this.val = val === undefined ? null : val;
 *    this.left = left === undefined ? null : left;
 *    this.right = right === undefined ? null : right;
 *    this.next = next === undefined ? null : next;
 * };
 */

/**
 * @param {Node} root
 * @return {Node}
 */
var connect = function (root) {
    if (!root) return root
    if (root.left) root.left.next = root.right

    let cur = root

    for (let el of [root.right, root.left])
        if (el) {
            while (el && !el.next && (cur = cur.next)) el.next = cur.left ?? cur.right
            connect(el)
        }

    return root
};