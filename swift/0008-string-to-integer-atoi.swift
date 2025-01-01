/**
 * 8. String to Integer (atoi)
 * https://leetcode.com/problems/string-to-integer-atoi/
 **/

import Foundation

class Solution {
    func myAtoi(_ s: String) -> Int {
        var ans = 0, chars = Array(s.trimmingCharacters(in: .whitespacesAndNewlines)).map { String($0) }
        var isNumberStarted = false, isMinus = false

        for ch in chars {
            if ch == "+" && !isNumberStarted {
                isNumberStarted = true
            } else if ch == "-" && !isNumberStarted {
                isMinus = true
                isNumberStarted = true
            } else if ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"].contains(ch) {
                isNumberStarted = true
                ans = ans * 10 + (Int(ch)! * (isMinus ? -1 : 1))
            } else {
                break
            }
            
            if ans > Int(Int32.max) { ans = Int(Int32.max); break}
            if ans < Int(Int32.min) { ans = Int(Int32.min); break}
        }

        return ans
    }
}