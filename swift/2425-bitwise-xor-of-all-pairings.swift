/**
 * 2425. Bitwise XOR of All Pairings
 * https://leetcode.com/problems/bitwise-xor-of-all-pairings/
 **/

class Solution {
    func xorAllNums(_ nums1: [Int], _ nums2: [Int]) -> Int {
        var ans = 0
        for n1 in nums1 {
            for n2 in nums2 {
                ans ^= n1 ^ n2
            }
        }
        return ans
    }
}

class Solution2 {
    func xorAllNums(_ nums1: [Int], _ nums2: [Int]) -> Int {
        return (nums2.count % 2 != 0 ? nums1.reduce(0, { $0 ^ $1 }) : 0) ^ (nums1.count % 2 != 0 ? nums2.reduce(0, { $0 ^ $1 }) : 0)
    }
}