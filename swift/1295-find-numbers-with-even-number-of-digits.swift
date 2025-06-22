/**
 * 1295. Find Numbers with Even Number of Digits
 * https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
 **/

class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        return nums.compactMap { String($0).count % 2 == 0 ? $0 : nil }.count
    }
}