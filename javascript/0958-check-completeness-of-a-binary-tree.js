/**
 * 958. Check Completeness of a Binary Tree
 * https://leetcode.com/problems/check-completeness-of-a-binary-tree/
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
 * @return {boolean}
 */
var isCompleteTree = function (root) {
  let stack = [root];
  let needNull = false;
  while (stack.length) {
    let first = stack.shift();
    if (first !== null && needNull) return false;
    if (first === null) {
      needNull = true;
    } else {
      stack.push(first.left, first.right);
    }
  }
  return true;
};
