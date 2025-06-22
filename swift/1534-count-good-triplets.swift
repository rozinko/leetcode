/**
 * 1534. Count Good Triplets
 * https://leetcode.com/problems/count-good-triplets/
 **/

class Solution {
    func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {
        var ans = 0

        for (i, ival) in arr.enumerated() {
            for (j, jval) in arr.enumerated() where j > i && abs(ival - jval) <= a {
                for (k, kval) in arr.enumerated() where k > j && abs(jval - kval) <= b && abs(ival - kval) <= c {
                    ans += 1
                }
            }
        }

        return ans
    }
}