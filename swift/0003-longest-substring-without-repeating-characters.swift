/**
 * 3. Longest Substring Without Repeating Characters
 * https://leetcode.com/problems/longest-substring-without-repeating-characters/
 **/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let characters: [String] = Array(s).map { String($0) }
        var hashmap: [String: Bool] = [:]
        var l = 0, r = 0
        var ans = 0

        while (r < characters.count) {
            let ch = characters[r]
            while hashmap[ch] != nil {
                hashmap[characters[l]] = nil
                l += 1
            }
            hashmap[ch] = true

            ans = max(ans, r - l + 1)

            r += 1
        }

        return ans
    }
}