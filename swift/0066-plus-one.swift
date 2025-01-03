/**
 * 66. Plus One
 * https://leetcode.com/problems/plus-one/
 **/

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var val: Int = 1, ans: [Int] = [], i = digits.count - 1

        while i >= 0 || val > 0 {
            val += i >= 0 ? digits[i] : 0
            ans.append(val % 10)
            val /= 10
            i -= 1
        }

        return ans.reversed()
    }
}