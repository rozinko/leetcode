/**
 * 49. Group Anagrams
 * https://leetcode.com/problems/group-anagrams/
 */

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [String: [String]]()

        for s in strs {
            let key = String(s.sorted())
            dict[key, default: []].append(s)
        }

        return Array(dict.values)
    }
}