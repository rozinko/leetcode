/**
 * 763. Partition Labels
 * https://leetcode.com/problems/partition-labels/
 **/

class Solution {
    func partitionLabels(_ s: String) -> [Int] {
        var chCounts: [Character: Int] = [:]
        for ch in s {
            chCounts[ch, default: 0] += 1
        }
        var ans: [Int] = []
        var now = 0, chNow: [Character: Int] = [:]
        for ch in s {
            now += 1
            chNow[ch, default: 0] += 1
            if chNow[ch] == chCounts[ch] { chNow[ch] = nil }
            if now > 0 && chNow.count == 0 {
                ans.append(now)
                now = 0
            }
        }
        return ans
    }
}