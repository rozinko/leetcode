/**
 * 2529. Maximum Count of Positive Integer and Negative Integer
 * https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
 **/

class Solution {
    func maximumCount(_ nums: [Int]) -> Int {
        var pos = 0, neg = 0
        for num in nums where num != 0 {
            if num > 0 { pos += 1 } else { neg += 1 }
        }
        return max(pos, neg)
    }
}