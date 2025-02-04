/**
 * 3105. Longest Strictly Increasing or Strictly Decreasing Subarray
 * https://leetcode.com/problems/longest-strictly-increasing-or-strictly-decreasing-subarray/
 **/

class Solution {
    func longestMonotonicSubarray(_ nums: [Int]) -> Int {
        var increasing = 1, descreasing = 1, ans = 1
        for i in 1 ..< nums.count {
            increasing = nums[i] > nums[i-1] ? increasing + 1 : 1
            descreasing = nums[i] < nums[i-1] ? descreasing + 1 : 1
            ans = max(ans, increasing, descreasing)
        }
        return ans
    }
}