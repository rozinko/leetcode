/**
 * 1422. Maximum Score After Splitting a String
 * https://leetcode.com/problems/maximum-score-after-splitting-a-string/
 **/

class Solution {
    func maxScore(_ s: String) -> Int {
        let chars = Array(s).map { String($0) }
        var zeros = 0, ones = chars.filter { $0 == "1" }.count

        var i = 0, ans = 0
        while i <= chars.count - 2 {
            if chars[i] == "0" {
                zeros += 1
            } else {
                ones -= 1
            }
            ans = max(ans, zeros + ones)
            i += 1
        }

        return ans
    }
}