/**
 * 2116. Check if a Parentheses String Can Be Valid
 * https://leetcode.com/problems/check-if-a-parentheses-string-can-be-valid/
 **/

class Solution {
    func canBeValid(_ s: String, _ locked: String) -> Bool {
        if s.count % 2 != 0 { return false }

        let brackets = Array(s)
        let locks = Array(locked).map { $0 == "1" }

        var score = 0, i = 0
        while i < brackets.count {
            score += brackets[i] == "(" || !locks[i] ? 1 : -1
            if score < 0 { return false }
            i += 1
        }

        score = 0
        i = brackets.count - 1
        while i >= 0 {
            score += brackets[i] == ")" || !locks[i] ? 1 : -1
            if score < 0 { return false }
            i -= 1
        }


        return true
    }
}