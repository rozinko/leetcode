/**
 * 3191. Minimum Operations to Make Binary Array Elements Equal to One I
 * https://leetcode.com/problems/minimum-operations-to-make-binary-array-elements-equal-to-one-i/
 **/

class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var ans = 0, nums = nums, i = 0
        while i < nums.count - 2 {
            if nums[i] == 0 {
                // change next three nums
                for j in 0 ... 2 {
                    nums[i+j] = nums[i+j] == 0 ? 1 : 0
                }
                ans += 1
            }
            i += 1
        }
        return nums.contains(0) ? -1 : ans
    }
}