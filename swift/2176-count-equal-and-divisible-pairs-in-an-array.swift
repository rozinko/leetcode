/**
 * 2176. Count Equal and Divisible Pairs in an Array
 * https://leetcode.com/problems/count-equal-and-divisible-pairs-in-an-array/
 **/

class Solution {
    func countPairs(_ nums: [Int], _ k: Int) -> Int {
        var ans = 0
        for (i, a) in nums.enumerated() {
            for (j, b) in nums.enumerated() where j > i && a == b && (i * j) % k == 0 {
                ans += 1
            }
        }
        return ans
    }
}