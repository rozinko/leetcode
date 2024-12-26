/**
 * 35. Search Insert Position
 * https://leetcode.com/problems/search-insert-position/
 **/

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for (i, v) in nums.enumerated() {
            if v >= target { return i }
        }
        return nums.count
    }
}