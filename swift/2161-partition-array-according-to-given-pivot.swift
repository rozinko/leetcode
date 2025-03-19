/**
 * 2161. Partition Array According to Given Pivot
 * https://leetcode.com/problems/partition-array-according-to-given-pivot/
 **/

class Solution {
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        func num(_ i: Int, _ pivot: Int) -> Int { i < pivot ? -1 : (i > pivot ? 1 : 0) }
        return nums.sorted { num($0, pivot) < num($1, pivot) }
    }
}