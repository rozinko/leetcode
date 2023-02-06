/**
 * 98. Validate Binary Search Tree
 * https://leetcode.com/problems/validate-binary-search-tree/
 *
 * https://leetcode.com/problems/validate-binary-search-tree/discuss/974378/PHP-JavaScript-Swift-Simple-solution-with-recursion
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
var isValidBST = function (root, less, greater) {
    return !root || (
        (less === undefined || root.val < less) &&
        (greater === undefined || root.val > greater) &&
        (!root.left || (root.left.val < root.val && isValidBST(root.left, root.val, greater))) &&
        (!root.right || (root.right.val > root.val && isValidBST(root.right, less, root.val)))
    )
};