/**
 * 53. Maximum Subarray
 * https://leetcode.com/problems/maximum-subarray/
 **/

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var now = nums[0], ans = nums[0]

        for i in 1 ..< nums.count {
            now = max(nums[i], now + nums[i])
            ans = max(ans, now)
        }

        return ans
    }
}