/**
 * 383. Ransom Note
 * https://leetcode.com/problems/ransom-note/
 **/

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict: [Character: (note: Int, magazine: Int)] = [:]

        for ch in ransomNote {
            dict[ch, default: (0, 0)].note += 1
        }

        for ch in magazine {
            dict[ch, default: (0, 0)].magazine += 1
        }

        for (note, magaz) in dict.values where note > magaz {
            return false
        }

        return true
    }
}