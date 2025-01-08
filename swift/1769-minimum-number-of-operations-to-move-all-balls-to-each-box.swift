/**
 * 1769. Minimum Number of Operations to Move All Balls to Each Box
 * https://leetcode.com/problems/minimum-number-of-operations-to-move-all-balls-to-each-box/
 **/

class Solution {
    func minOperations(_ boxes: String) -> [Int] {
        let box = Array(boxes).map { Int(String($0))! }
        var ans = [Int](repeating: 0, count: box.count)

        var temp = 0, ones = 0
        for i in 0 ... box.count-1 {
            ans[i] += temp
            ones += box[i]
            temp += ones
        }

        temp = 0
        ones = 0
        for i in (0 ... box.count-1).reversed() {
            ans[i] += temp
            ones += box[i]
            temp += ones
        }

        return ans
    }
}