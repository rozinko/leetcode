/**
 * 3110. Score of a String
 * https://leetcode.com/problems/score-of-a-string/
 **/

class Solution {
    func scoreOfString(_ s: String) -> Int {
        var ans = 0, last: Int?
        for ch in s {
            if last != nil { ans += abs(Int(ch.asciiValue!) - last!) }
            last = Int(ch.asciiValue!)
        }
        return ans
    }
}