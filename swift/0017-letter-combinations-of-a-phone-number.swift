/**
 * 17. Letter Combinations of a Phone Number
 * https://leetcode.com/problems/letter-combinations-of-a-phone-number/
 **/

class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        let keyboard: [Int: [String]] = [
            1: [],
            2: ["a", "b", "c"],
            3: ["d", "e", "f"],
            4: ["g", "h", "i"],
            5: ["j", "k", "l"],
            6: ["m", "n", "o"],
            7: ["p", "q", "r", "s"],
            8: ["t", "u", "v"],
            9: ["w", "x", "y", "z"]
        ]

        var stack: [String] = [""]
        
        for i in Array(digits).map({ Int(String($0))! }) {
            var next: [String] = []
            for row in stack {
                for ch in keyboard[i]! {
                    next.append( row + ch )
                }
            }
            stack = next
        }

        return stack.count <= 1 ? [] : stack
    }
}