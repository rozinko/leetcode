/**
 * 1221. Split a String in Balanced Strings
 * https://leetcode.com/problems/split-a-string-in-balanced-strings/
 **/

class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var ans = 0, balance = 0
        for ch in s {
            balance += ch == "R" ? 1 : -1
            if balance == 0 {
                ans += 1
            }
        }
        return ans
    }
}