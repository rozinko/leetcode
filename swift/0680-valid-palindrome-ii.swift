/**
 * 680. Valid Palindrome II
 * https://leetcode.com/problems/valid-palindrome-ii/
 **/

class Solution {

    func isPal(_ chs: [Character], _ l: Int, _ r: Int, _ alreadyDeleted: Bool) -> Bool {
        var l = l, r = r
        while l < r {
            if chs[l] != chs[r] {
                if alreadyDeleted { return false }
                return isPal(chs, l+1, r, true) || isPal(chs, l, r-1, true)
            }
            l += 1
            r -= 1
        }
        return true
    }

    func validPalindrome(_ s: String) -> Bool {
        let chs = Array(s)
        return isPal(chs, 0, chs.count-1, false)
    }
}