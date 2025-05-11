/**
 * 1550. Three Consecutive Odds
 * https://leetcode.com/problems/three-consecutive-odds/
 **/

class Solution {
    func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
        guard arr.count >= 3 else { return false }
        for i in 1 ..< arr.count-1 where arr[i-1] % 2 == 1 && arr[i] % 2 == 1 && arr[i+1] % 2 == 1 {
            return true
        }
        return false
    }
}