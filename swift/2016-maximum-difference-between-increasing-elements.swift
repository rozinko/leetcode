/**
 * 2016. Maximum Difference Between Increasing Elements
 * https://leetcode.com/problems/maximum-difference-between-increasing-elements/
 **/

class Solution {
    func maximumDifference(_ nums: [Int]) -> Int {
        var ans = -1
        var min = nums[0]
        for num in nums {
            if num <= min {
                min = num
            } else {
                ans = max(ans, num - min)
            }
        }
        return ans
    }
}