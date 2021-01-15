/**
 * 1646. Get Maximum in Generated Array
 * https://leetcode.com/problems/get-maximum-in-generated-array/
 */

class Solution {
    func getMaximumGenerated(_ n: Int) -> Int {
        var arr: [Int] = [0, 1], i = 1
        while i < n {
            i += 1
            arr.append(i % 2 == 0 ? arr[i/2] : arr[(i-1)/2] + arr[(i+1)/2])
        }
        return n < 1 ? 0 : arr.max()!
    }
}