/**
 * 3223. Minimum Length of String After Operations
 * https://leetcode.com/problems/minimum-length-of-string-after-operations/
 **/

class Solution {
    func minimumLength(_ s: String) -> Int {
        var dict: [Character: Int] = [:]

        for ch in s {
            dict[ch, default: 0] += 1
        }

        return dict.values.map { $0 % 2 == 0 ? 2 : 1 }.reduce(0, +)
    }
}