/**
 * 58. Length of Last Word
 * https://leetcode.com/problems/length-of-last-word/
 **/

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        return s.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: " ").last?.count ?? 0
    }
}