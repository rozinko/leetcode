/**
 * 1800. Maximum Ascending Subarray Sum
 * https://leetcode.com/problems/maximum-ascending-subarray-sum/
 **/

class Solution {
    func maxAscendingSum(_ nums: [Int]) -> Int {
        var ans = nums[0], now = nums[0]
        
        for i in 1 ..< nums.count {
            now = (nums[i] > nums[i-1] ? now : 0) + nums[i]
            ans = max(ans, now)
        }

        return ans
    }
}