/**
 * 515. Find Largest Value in Each Tree Row
 * https://leetcode.com/problems/find-largest-value-in-each-tree-row/
 **/

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
    func largestValues(_ root: TreeNode?) -> [Int] {
        if root == nil { return [] }

        var ans: [Int] = [ root!.val ]

        let leftvals: [Int] = largestValues(root?.left)
        let rightvals: [Int] = largestValues(root?.right)

        var i = 0
        while i < leftvals.count || i < rightvals.count {
            let lVal = i < leftvals.count ? leftvals[i] : rightvals[i]
            let rVal = i < rightvals.count ? rightvals[i] : leftvals[i]

            ans.append( max(lVal, rVal) )

            i += 1
        }

        return ans
    }
}