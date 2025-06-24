/**
 * 2367. Number of Arithmetic Triplets
 * https://leetcode.com/problems/number-of-arithmetic-triplets/
 **/

class Solution {
    func arithmeticTriplets(_ nums: [Int], _ diff: Int) -> Int {
        var ans = 0
        for (i, iv) in nums.enumerated() {
            for (j, jv) in nums.enumerated() where j > i && jv - iv == diff {
                for (k, kv) in nums.enumerated() where k > j && kv - jv == diff {
                    ans += 1
                }
            }
        }
        return ans
    }
}