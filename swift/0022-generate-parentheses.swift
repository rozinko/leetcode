/**
 * 22. Generate Parentheses
 * https://leetcode.com/problems/generate-parentheses/
 */

class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        if n <= 1 {
            return n == 1 ? ["()"] : [""]
        }

        var result: [String] = []
        var map: [[String]] = []

        for i in 0...n-1 {
            map.append(self.generateParenthesis(i))
        }

        for i in 0...n-1 {
            for one in map[i] {
                for two in map[n-1-i] {
                    result.append("(" + two + ")" + one)
                }
            }
        }

        return result
    }
}

class Solution2 {
    func generateParenthesis(_ n: Int) -> [String] {
        var stack: [(s: String, opened: Int)] = [("", 0)]

        while stack[0].s.count < n * 2 {
            var newStack: [(s: String, opened: Int)] = []

            for row in stack {
                if n * 2 - row.s.count - row.opened >= 2 {
                    newStack.append( (row.s + "(", row.opened + 1) )
                }
                if row.opened > 0 {
                    newStack.append( (row.s + ")", row.opened - 1) )
                }
            }

            stack = newStack
        }

        return stack.map { $0.s }
    }
}