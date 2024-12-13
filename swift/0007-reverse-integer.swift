/**
 * 7. Reverse Integer
 * https://leetcode.com/problems/reverse-integer/
 **/

class Solution {
    func reverse(_ x: Int) -> Int {
        var x = x, ans = 0
        
        while x != 0 {
            ans = ans * 10 + x % 10
            x /= 10
        }

        return ans < -2147483648 || ans > 2147483647 ? 0 : ans
    }
}