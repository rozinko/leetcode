/**
 * 283. Move Zeroes
 * https://leetcode.com/problems/move-zeroes/
 **/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        nums.sort(by: { $0 != 0 && $1 == 0 })
    }
}

class Solution2 {
    func moveZeroes(_ nums: inout [Int]) {
        for i in 0 ..< nums.count-1 {
            for j in i+1 ..< nums.count {
                if nums[i] == 0 && nums[j] != 0 {
                    (nums[i], nums[j]) = (nums[j], nums[i])
                }
            }
        }
    }
}