/**
 * 567. Permutation in String
 * https://leetcode.com/problems/permutation-in-string/
 **/

class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s1.count <= s2.count else { return false }

        let s2arr = Array(s2)
        let s1count = s1.count, s2count = s2.count
        var dict: [Character: Int] = [:]

        for ch in s1 {
            dict[ch, default: 0] += 1
        }

        var l = 0, r = -1
        while l + r + 1 < s1count {
            r += 1
            dict[s2arr[r], default: 0] -= 1
            if dict[s2arr[r]] == 0 { dict[s2arr[r]] = nil }
        }

        while !dict.isEmpty && r < s2count - 1 {
            r += 1
            dict[s2arr[r], default: 0] -= 1
            if dict[s2arr[r]] == 0 { dict[s2arr[r]] = nil }
            dict[s2arr[l], default: 0] += 1
            if dict[s2arr[l]] == 0 { dict[s2arr[l]] = nil }
            l += 1
        }

        return dict.isEmpty
    }
}