/**
 * 1400. Construct K Palindrome Strings
 * https://leetcode.com/problems/construct-k-palindrome-strings/
 **/

class Solution {
    func canConstruct(_ s: String, _ k: Int) -> Bool {
        var chars: [Character: Bool] = [:]
        for ch in s {
            chars[ch] = chars[ch] != nil ? nil : true
        }
        return k >= chars.count && k <= s.count
    }
}

class Solution2 {
    func canConstruct(_ s: String, _ k: Int) -> Bool {       
        return k >= s.reduce([Character: Bool](), { d, c in var d = d; d[c] = d[c] != nil ? nil : true; return d }).count && k <= s.count
    }
}