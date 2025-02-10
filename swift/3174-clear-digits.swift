/**
 * 3174. Clear Digits
 * https://leetcode.com/problems/clear-digits/
 **/

class Solution {
    func clearDigits(_ s: String) -> String {
        var chars = Array(s).map { String($0) }
        var i = chars.count-1, nextCharDelete = 0

        while i >= 0 {
            if Int(chars[i]) != nil {
                chars[i] = ""
                nextCharDelete += 1
            } else if nextCharDelete > 0 {
                chars[i] = ""
                nextCharDelete -= 1
            }
            i -= 1
        }

        return chars.reduce("", +)
    }
}