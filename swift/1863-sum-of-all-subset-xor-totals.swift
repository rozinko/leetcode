/**
 * 1863. Sum of All Subset XOR Totals
 * https://leetcode.com/problems/sum-of-all-subset-xor-totals/
 **/

class Solution {
    func subsetXORSum(_ nums: [Int]) -> Int {
        return dfs(nums, 0, 0)
    }

    func dfs(_ nums: [Int], _ index: Int, _ current: Int) -> Int {
        guard index < nums.count else { return current }

        let withThisElement = dfs(nums, index + 1, current ^ nums[index])
        let withoutThisElement = dfs(nums, index + 1, current)

        return withThisElement + withoutThisElement
    }
}