/**
 * 1408. String Matching in an Array
 * https://leetcode.com/problems/string-matching-in-an-array/
 **/

class Solution {
    func stringMatching(_ words: [String]) -> [String] {
        var words = words.sorted(by: { $0.count > $1.count })
        var ans: [String: Bool] = [:]

        var i = 0, j = 0
        while i < words.count-1 {
            j = i + 1
            let bigger = words[i]
            while j < words.count {
                let smaller = words[j]
                let substring_exists = bigger.components(separatedBy: smaller).count >= 2
                if substring_exists {
                    ans[smaller] = true
                }
                j += 1
            }
            i += 1
        }

        return Array(ans.keys)
    }
}