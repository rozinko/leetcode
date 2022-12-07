/**
 * 938. Range Sum of BST
 * https://leetcode.com/problems/range-sum-of-bst/
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
 * @param {number} low
 * @param {number} high
 * @return {number}
 */
var rangeSumBST = function (root, low, high) {
  return !root
    ? 0
    : (root.val >= low && root.val <= high ? root.val : 0) +
        rangeSumBST(root.left, low, high) +
        rangeSumBST(root.right, low, high);
};
