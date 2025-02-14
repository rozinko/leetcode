/**
 * 2342. Max Sum of a Pair With Equal Sum of Digits
 * https://leetcode.com/problems/max-sum-of-a-pair-with-equal-sum-of-digits/
 **/

class Solution {
    func maximumSum(_ nums: [Int]) -> Int {
        var map: [Int: Int] = [:]
        var ans = -1

        for num in nums {
            var sum = 0, temp = num
            while temp > 0 {
                sum += temp % 10
                temp /= 10
            }
            if map[sum] != nil {
                ans = max(ans, map[sum]! + num)
            }
            map[sum] = max(num, map[sum] ?? num)
        }

        return ans
    }
}