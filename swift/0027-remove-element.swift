/**
 * 27. Remove Element
 * https://leetcode.com/problems/remove-element/
 **/

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums.removeAll(where: { $0 == val })
        return nums.count
    }
}