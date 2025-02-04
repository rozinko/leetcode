/**
 * 1752. Check if Array Is Sorted and Rotated
 * https://leetcode.com/problems/check-if-array-is-sorted-and-rotated/
 **/

class Solution {
    func check(_ nums: [Int]) -> Bool {
        var descCounts = 0
        for i in 1 ..< nums.count where nums[i] < nums[i-1] {
            descCounts += 1
        }
        return descCounts == 0 || descCounts == 1 && nums.first! >= nums.last!
    }
}