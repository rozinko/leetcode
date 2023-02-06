/**
 * 1302. Deepest Leaves Sum
 * https://leetcode.com/problems/deepest-leaves-sum/
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
 * @param {number} level
 * @return {number|array}
 */
var deepestLeavesSum = function (root, level = 0) {
    if (level) {
        if (!root.left && !root.right) return [root.val, level]
        if (!root.left || !root.right) return deepestLeavesSum((root.left ?? root.right), (level + 1))

        let left = deepestLeavesSum(root.left, (level + 1))
        let right = deepestLeavesSum(root.right, (level + 1))

        return left[1] === right[1] ? [left[0] + right[0], left[1]] : (left[1] > right[1] ? left : right)
    }

    if (!root.left && !root.right) return root.val
    if (!root.left || !root.right) return deepestLeavesSum((root.left ?? root.right), (level + 1))[0]

    let left = deepestLeavesSum(root.left, (level + 1))
    let right = deepestLeavesSum(root.right, (level + 1))

    return left[1] === right[1] ? (left[0] + right[0]) : (left[1] > right[1] ? left[0] : right[0])
};