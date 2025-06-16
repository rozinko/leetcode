/**
 * 989. Add to Array-Form of Integer
 * https://leetcode.com/problems/add-to-array-form-of-integer/
 **/

class Solution {
    func addToArrayForm(_ num: [Int], _ k: Int) -> [Int] {
        var num = num, k = k, i = num.count-1, prev = 0
        while (k > 0 || prev > 0) && i >= 0 {
            var v: Int = k % 10 + prev + num[i]
            prev = 0
            if v >= 10 {
                v %=  10
                prev = 1
            }
            num[i] = v
            i -= 1
            k /= 10
        }
        while k > 0 || prev > 0 {
            var v: Int = k % 10 + prev
            prev = 0
            if v >= 10 {
                v %=  10
                prev = 1
            }
            num.insert(v, at: 0)
            k /= 10
        }
        return num
    }
}