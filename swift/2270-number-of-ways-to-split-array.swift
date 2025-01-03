/**
 * 2270. Number of Ways to Split Array
 * https://leetcode.com/problems/number-of-ways-to-split-array/
 **/

class Solution {
    func waysToSplitArray(_ nums: [Int]) -> Int {
        let sum = nums.reduce(0, +)
        var ans = 0

        var i = 0, leftsum = 0
        while i < nums.count-1 {
            leftsum += nums[i]
            if leftsum >= sum - leftsum { ans += 1}

            i += 1
        }

        return ans
    }
}