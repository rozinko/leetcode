/**
 * 1493. Longest Subarray of 1's After Deleting One Element
 * https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/
 **/

class Solution {
    func longestSubarray(_ nums: [Int]) -> Int {
        var now = 0, prev = 0, zeroFound = false, ans = 0

        for i in nums {
            if i == 1 {
                now += 1
                ans = max(ans, now + prev)
            } else {
                zeroFound = true
                prev = now
                now = 0
            }
        }

        return zeroFound ? ans : ans - 1
    }
}