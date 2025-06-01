/**
 * 28. Find the Index of the First Occurrence in a String
 * https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/
 **/

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let source = Array(haystack), find = Array(needle)
        var i = 0, j = 0
        while i < source.count {
            while i+j < source.count && j < find.count && source[i+j] == find[j] {
                j += 1
            }
            if j == find.count {
                return i
            }
            i += 1
            j = 0
        }

        return -1
    }
}