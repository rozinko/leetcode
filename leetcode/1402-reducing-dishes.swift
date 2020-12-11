/**
 * 1402. Reducing Dishes
 * https://leetcode.com/problems/reducing-dishes/
 */

class Solution {
    func maxSatisfaction(_ satisfaction: [Int]) -> Int {
        var satisfaction = satisfaction.sorted()
        let positiveSum = satisfaction.filter{$0 >= 0}.reduce(0, +)
        var negLine = 0, diff = 0, prevDiff = 0

        var i = satisfaction.filter{$0 < 0}.count
        while i > 0 {
            i -= 1
            negLine += satisfaction[i]
            diff += negLine + positiveSum
            if diff >= prevDiff {
                prevDiff = diff
            } else {
                i += 1
                break
            }
        }

        return satisfaction[i...].enumerated().reduce(0, {$0 + $1.element * ($1.offset + 1)})
    }
}