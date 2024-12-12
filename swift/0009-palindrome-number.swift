/**
 * 9. Palindrome Number
 * https://leetcode.com/problems/palindrome-number/
 **/

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var temp = x
        var reversed = 0

        while (temp > 0) {
            reversed = reversed * 10 + temp % 10
            temp = Int(temp / 10)
        }

        return x == reversed
    }
}


class Solution2 {
    func isPalindrome(_ x: Int) -> Bool {
        return String(x) == String(String(x).reversed())
    }
}