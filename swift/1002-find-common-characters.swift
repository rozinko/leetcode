/**
 * 1002. Find Common Characters
 * https://leetcode.com/problems/find-common-characters/
 **/

class Solution {
    func commonChars(_ words: [String]) -> [String] {
        var mainDict: [Character: Int] = [:] // ch : count
        for ch in Array(words[0]) {
            mainDict[ch, default: 0] += 1
        }

        for i in 1 ..< words.count {
            var wordDict: [Character: Int] = [:]
            for ch in Array(words[i]) {
                wordDict[ch, default: 0] += 1
            }
            for key in mainDict.keys where mainDict[key]! > 0 {
                mainDict[key] = min(mainDict[key]!, wordDict[key] ?? 0)
            }
        }

        var ans: [String] = []
        for key in mainDict.keys where mainDict[key]! > 0 {
            while mainDict[key]! > 0 {
                ans.append( String(key) )
                mainDict[key]! -= 1
            }
        }

        return ans
    }
}