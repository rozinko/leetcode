/**
 * 38. Count and Say
 * https://leetcode.com/problems/count-and-say/
 **/

class Solution {
    func countAndSay(_ n: Int) -> String {
        if n == 1 { return "1" }

        var stackCh: [String] = [], stackCount: [Int] = []
        for ch in Array(countAndSay(n-1)).map({ String($0) }) {
            if stackCh.count > 0 && stackCh[stackCh.count-1] == ch {
                stackCount[stackCount.count-1] += 1
            } else {
                stackCh.append(ch)
                stackCount.append(1)
            }
        }

        var ans: String = ""
        for i in 0..<stackCh.count {
            ans += String(stackCount[i]) + stackCh[i]
        }
        return ans
    }
}