/**
 * 173. Binary Search Tree Iterator
 * https://leetcode.com/problems/binary-search-tree-iterator/
 *
 * https://leetcode.com/problems/binary-search-tree-iterator/discuss/966100/PHP-JavaScript-Swift-Stacks-faster-100-O(1)-time-O(h)-space-explained
 */

/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {TreeNode} root
 */
var BSTIterator = function (root) {
    this.parents = []

    while (root) {
        this.parents.push(root)
        root = root.left
    }
};

/**
 * @return {number}
 */
BSTIterator.prototype.next = function () {
    let cur = this.parents.pop()
    const val = cur.val
    if (cur.right) {
        cur = cur.right
        while (cur) {
            this.parents.push(cur)
            cur = cur.left
        }
    }
    return val
};

/**
 * @return {boolean}
 */
BSTIterator.prototype.hasNext = function () {
    return this.parents.length > 0
};

/**
 * Your BSTIterator object will be instantiated and called as such:
 * var obj = new BSTIterator(root)
 * var param_1 = obj.next()
 * var param_2 = obj.hasNext()
 */