/**
 * 1512. Number of Good Pairs
 * https://leetcode.com/problems/number-of-good-pairs/
 */

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var prev: [Int: Int] = [:]

        for num in nums {
            prev[num] = (prev[num] ?? 0) + 1
        }

        return prev.filter{$0.value > 1}.map{$0.value * ($0.value-1) / 2}.reduce(0, +)
    }
}

class Solution2 {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var dict: [Int: Int] = [:], ans = 0

        for (i, v) in nums.enumerated() {
            dict[v, default: 0] += 1
        }

        for pairCount in dict.values where pairCount > 1 {
            var temp = pairCount
            while temp > 1 {
                ans += temp - 1
                temp -= 1
            }
        }

        return ans
    }
}