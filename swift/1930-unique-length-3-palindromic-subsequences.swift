/**
 * 1930. Unique Length-3 Palindromic Subsequences
 * https://leetcode.com/problems/unique-length-3-palindromic-subsequences/
 **/

class Solution {
    func countPalindromicSubsequence(_ s: String) -> Int {
        var first: [String: Int] = [:],
            last: [String: Int] = [:],
            palindromic: [String: Int] = [:]

        for (i, c) in Array(s).map({String($0)}).enumerated() {
            if let from = first[c] {
                palindromic[c] = last.filter({ $0.1 > from }).count
            } else {
                first[c] = i
            }
            last[c] = i
        }

        return palindromic.map({ $0.1 }).reduce(0, +)
    }
}