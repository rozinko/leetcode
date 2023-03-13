/**
 * 101. Symmetric Tree
 * https://leetcode.com/problems/symmetric-tree/
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
var isSymmetric = function (root) {
  let compare = function (a, b) {
    if (a === null || b === null) return a === null && b === null;
    return (
      a.val === b.val && compare(a.left, b.right) && compare(a.right, b.left)
    );
  };

  return compare(root.left, root.right);
};
