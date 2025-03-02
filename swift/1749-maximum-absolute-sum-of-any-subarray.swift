/**
 * 1749. Maximum Absolute Sum of Any Subarray
 * https://leetcode.com/problems/maximum-absolute-sum-of-any-subarray/
 **/

class Solution {
    func maxAbsoluteSum(_ nums: [Int]) -> Int {
        var positive = 0, negative = 0, ans = 0

        for num in nums {
            positive = max(positive + num, num)
            negative = min(negative + num, num)
            ans = max(ans, abs(positive), abs(negative))
        }
        
        return ans
    }
}