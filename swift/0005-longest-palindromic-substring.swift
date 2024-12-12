/**
 * 5. Longest Palindromic Substring
 * https://leetcode.com/problems/longest-palindromic-substring/
 **/

class Solution {
    func longestPalindrome(_ s: String) -> String {
        let chs = Array(s).map { String($0) }
        var best = [0,0]

        // a, aba, abcba, ...
        for i in 0..<chs.count {
            for j in 0...min(i, chs.count-i-1) {
                if chs[i-j] != chs[i+j] {
                    break
                }
                if best[1]-best[0] < 2*j {
                    best = [i-j, i+j]
                }
            }
        }

        // aa, abba, abccba, ...
        for i in 1..<chs.count {
            for j in 0...min(i-1, chs.count-i-1) {
                if chs[i-1-j] != chs[i+j] {
                    break
                }
                if best[1]-best[0] < 2*j+1 {
                    best = [i-1-j, i+j]
                }
            }
        }

        return Array(chs[best[0]...best[1]]).joined(separator: "")
    }
}