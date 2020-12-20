/**
 * 22. Generate Parentheses
 * https://leetcode.com/problems/generate-parentheses/
 */

class Solution {
    func generateParenthesis(_ n: Int, _ s: String = "()") -> [String] {
        if n == 1 {
            return [s]
        }
        var result: [String] = []
        for i in 1...s.length {
            let index = s.index(s.startIndex, offsetBy: i)
            result += self.generateParenthesis(n - 1, s[..<index] + "()" + s[index...])
        }
        return Array(Set(result))
    }
}