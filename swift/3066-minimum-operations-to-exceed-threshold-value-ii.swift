/**
 * 3066. Minimum Operations to Exceed Threshold Value II
 * https://leetcode.com/problems/minimum-operations-to-exceed-threshold-value-ii/
 **/

class Solution {
    func minOperations(_ nums: [Int], _ k: Int) -> Int {
        var heap: Heap<Int> = []
        var ans = 0

        for num in nums where num < k {
            heap.insert(num)
        }

        while heap.count >= 2 {
            let a = heap.popMin()!
            let b = heap.popMin()!
            let c = a + b + min(a, b)
            if c < k {
                heap.insert(c)
            }
            ans += 1
        }

        return ans + heap.count
    }
}