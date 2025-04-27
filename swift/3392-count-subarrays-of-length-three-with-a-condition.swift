/**
 * 3392. Count Subarrays of Length Three With a Condition
 * https://leetcode.com/problems/count-subarrays-of-length-three-with-a-condition/
 **/

class Solution {
    func countSubarrays(_ nums: [Int]) -> Int {
        var ans = 0
        for i in 1 ... nums.count - 2 where nums[i] == (nums[i-1] + nums[i+1]) * 2 {
            ans += 1
        }
        return ans
    }
}