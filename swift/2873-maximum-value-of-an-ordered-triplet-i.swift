/**
 * 2873. Maximum Value of an Ordered Triplet I
 * https://leetcode.com/problems/maximum-value-of-an-ordered-triplet-i/
 **/

class Solution {
    func maximumTripletValue(_ nums: [Int]) -> Int {
        var ans = 0

        for (i, val1) in nums.enumerated() {
            for (j, val2) in nums.enumerated() where j > i {
                for (k, val3) in nums.enumerated() where k > j {
                    ans = max(ans, (val1 - val2) * val3)
                }
            }
        }

        return ans
    }
}