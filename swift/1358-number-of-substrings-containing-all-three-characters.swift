/**
 * 1358. Number of Substrings Containing All Three Characters
 * https://leetcode.com/problems/number-of-substrings-containing-all-three-characters/
 **/

class Solution {
    func numberOfSubstrings(_ s: String) -> Int {
        var ans = 0

        let chs = Array(s)
        var l = 0, r = -1
        var dict: [Character: Int] = ["a": 0, "b": 0, "c": 0]

        while r < chs.count - 1 {

            while r < chs.count - 1 && (dict["a"]! == 0 || dict["b"]! == 0 || dict["c"]! == 0) {
                r += 1
                dict[chs[r], default: 0] += 1
            }
            
            while l < r && dict["a"]! > 0 && dict["b"]! > 0 && dict["c"]! > 0 {
                ans += chs.count - r
                dict[chs[l], default: 0] -= 1
                l += 1
            }
        }

        return ans
    }
}