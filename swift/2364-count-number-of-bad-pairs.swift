/**
 * 2364. Count Number of Bad Pairs
 * https://leetcode.com/problems/count-number-of-bad-pairs/
 **/

class Solution {
    func getPairsCount(_ i: Int) -> Int { return i - 1 + (i > 2 ? getPairsCount(i-1) : 0) }

    func countBadPairs(_ nums: [Int]) -> Int {
        // badPairs = allPairs - goodPairs
        let allPairs = getPairsCount(nums.count)

        // get hash map of array of: nums[i]-i
        let hashmap = nums.enumerated().map({ $0.1 - $0.0 }).reduce(into: [:]) { $0[$1, default: 0] += 1 }
        let goodPairs = hashmap.values.map({ getPairsCount($0) }).reduce(0, +)

        return allPairs - goodPairs
    }
}