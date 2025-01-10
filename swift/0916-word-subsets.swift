/**
 * 916. Word Subsets
 * https://leetcode.com/problems/word-subsets/
 **/

class Solution {
    func wordSubsets(_ words1: [String], _ words2: [String]) -> [String] {
        let w2: [String: Int] = words2.reduce([String: Int](), { res, el in
            var res = res

            var temp: [String: Int] = [:]
            for ch in Array(el).map({ String($0) }) {
                temp[ch] = 1 + (temp[ch] ?? 0)
            }

            for (str, cnt) in temp {
                res[str] = max(cnt, res[str] ?? 0)
            }

            return res
        })
        var ans: [String] = []

        for word in words1 {
            var goodWord = true
            for (sep, needCount) in w2 {
                if word.components(separatedBy: sep).count <= needCount {
                    goodWord = false
                    break
                }
            }
            if goodWord { ans.append(word) }
        }

        return ans
    }
}