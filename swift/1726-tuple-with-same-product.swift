/**
 * 1726. Tuple with Same Product
 * https://leetcode.com/problems/tuple-with-same-product/
 **/

class Solution {
    func tupleSameProduct(_ nums: [Int]) -> Int {
        var pairs: [Int: [(Int, Int)]] = [:]

        for i in 0 ..< nums.count-1 {
            for j in i+1 ..< nums.count {
                pairs[nums[i]*nums[j], default: []].append( (nums[i], nums[j]) )
            }
        }

        func countCombinations(_ i: Int) -> Int { i > 1 ? (i - 1 + countCombinations(i-1)) : 0 }

        return pairs.values.map({ countCombinations($0.count) }).reduce(0, +) * 8
    }
}