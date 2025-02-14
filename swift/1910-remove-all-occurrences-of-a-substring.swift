/**
 * 1910. Remove All Occurrences of a Substring
 * https://leetcode.com/problems/remove-all-occurrences-of-a-substring/
 **/
import Foundation

class Solution {
    func removeOccurrences(_ s: String, _ part: String) -> String {
        var s = s
        while let range = s.range(of: part) {
            s.removeSubrange(range)
        }
        return s
    }
}