/**
 * 3396. Minimum Number of Operations to Make Elements in Array Distinct
 * https://leetcode.com/problems/minimum-number-of-operations-to-make-elements-in-array-distinct/
 **/

 import Foundation

class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
        var pos = -1, map: [Int: Bool] = [:]
        for (i, val) in nums.enumerated().reversed() {
            if map[val] != nil {
                pos = i
                break
            }
            map[val] = true
        }
        return pos == -1 ? 0 : Int(ceil(Double(pos + 1) / 3))
    }
}