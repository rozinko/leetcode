/**
 * 14. Longest Common Prefix
 * https://leetcode.com/problems/longest-common-prefix/
 **/

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let array = strs.map { Array($0).map { String($0) } }
        var ans: String = ""

        var i = 0
        while i < array[0].count {
            var flag = true
            for j in 1..<array.count {
                if i >= array[j].count || array[0][i] != array[j][i] {
                    flag = false
                }
            }
            if flag {
                ans += array[0][i]
                i += 1
            } else {
                i = array[0].count
            }
        }

        return ans
    }
}