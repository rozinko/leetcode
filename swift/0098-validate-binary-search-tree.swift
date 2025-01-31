/**
 * 98. Validate Binary Search Tree
 * https://leetcode.com/problems/validate-binary-search-tree/
 *
 * https://leetcode.com/problems/validate-binary-search-tree/discuss/974378/PHP-JavaScript-Swift-Simple-solution-with-recursion
 */

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    
    func isValidBST(_ root: TreeNode?) -> Bool {
        func isValid(_ root: TreeNode?, less: Int, greater: Int) -> Bool {
            guard let root = root else { return true }

            let thisValid = root.val < less && root.val > greater
            let leftValid = isValid(root.left, less: root.val, greater: greater)
            let rightValid = isValid(root.right, less: less, greater: root.val)

            return thisValid && leftValid && rightValid
        }
        
        return isValid(root, less: .max, greater: .min)
    }
}