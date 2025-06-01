/**
 * 3024. Type of Triangle
 * https://leetcode.com/problems/type-of-triangle/
 **/

class Solution {
    func triangleType(_ nums: [Int]) -> String {
        let nums = nums.sorted()
        let (a, b, c) = (nums[0], nums[1], nums[2])
        guard a + b > c else { return "none" }
        if a == b && b == c { return "equilateral" }
        if a == b || b == c { return "isosceles" }
        return "scalene"
    }
}