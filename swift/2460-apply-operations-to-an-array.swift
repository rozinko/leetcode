/**
 * 2460. Apply Operations to an Array
 * https://leetcode.com/problems/apply-operations-to-an-array/
 **/

class Solution {
    func applyOperations(_ nums: [Int]) -> [Int] {
        var nums = nums, i = 0
        while i < nums.count-1 {
            if nums[i] == nums[i+1] {
                nums[i] *= 2
                nums[i+1] = 0
                i += 1
            }
            i += 1
        }
        return nums.sorted { ($0 > 0 ? -1 : 0) < ($1 > 0 ? -1 : 0) }
    }
}