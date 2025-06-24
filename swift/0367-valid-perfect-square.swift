/**
 * 367. Valid Perfect Square
 * https://leetcode.com/problems/valid-perfect-square/
 **/

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        for i in 1 ... num where i * i >= num {
            return i * i == num
        }
        return false
    }
}