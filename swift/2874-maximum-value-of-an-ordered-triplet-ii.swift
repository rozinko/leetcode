/**
 * 2874. Maximum Value of an Ordered Triplet II
 * https://leetcode.com/problems/maximum-value-of-an-ordered-triplet-ii/
 **/

class Solution {
    func maximumTripletValue(_ nums: [Int]) -> Int {
        // nums [0, 1 ..< n]
        // bestLeft = [1, ..< n-1]
        // bestRight = [2, ..< n]
        // for ans 2 ..< n
        let n = nums.count

        var bestLeft = [Int](repeating: 0, count: n-1)
        var bestRight = [Int](repeating: 0, count: n)

        var bestFirst = nums[0], bestPrevLeft = nums[0] - nums[1]
        for i in 1 ..< n-1 {
            bestFirst = max(bestFirst, nums[i-1])
            bestPrevLeft = max(bestPrevLeft, bestFirst - nums[i])
            bestLeft[i] = bestPrevLeft
        }

        var bestPrevRight = nums[n-1]
        for i in (2 ..< n).reversed() {
            bestPrevRight = max(bestPrevRight, nums[i])
            bestRight[i] = bestPrevRight
        }

        var ans = 0
        for i in 2 ..< n {
            ans = max(ans, bestLeft[i-1] * bestRight[i])
        }
        return ans
    }
}