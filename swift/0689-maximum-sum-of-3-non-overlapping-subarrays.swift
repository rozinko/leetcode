/**
 * 689. Maximum Sum of 3 Non-Overlapping Subarrays
 * https://leetcode.com/problems/maximum-sum-of-3-non-overlapping-subarrays/
 **/

class Solution {
    func maxSumOfThreeSubarrays(_ nums: [Int], _ k: Int) -> [Int] {
        var dp: [(sum: Int, ind: Int)] = []

        var l = 0, r = -1, sum = 0
        while r < nums.count-1 {
            r += 1
            sum += nums[r]
            if r - l + 1 > k {
                sum -= nums[l]
                l += 1
            }
            if r - l + 1 == k {
                dp.append( (sum: sum, ind: l) )
            }
        }

        var best_dp = [(left: Int?, right: Int?)](repeating: (nil, nil), count: dp.count)

        var best = 0
        for i in 0 ... dp.count-1 {
            best_dp[i].left = dp[i].sum > dp[best].sum ? i : best
            best = best_dp[i].left!
        }

        best = dp.count - 1
        for i in (0 ... dp.count-1).reversed() {
            best_dp[i].right = dp[i].sum >= dp[best].sum ? i : best
            best = best_dp[i].right!
        }

        var ans: [Int] = [], ans_sum = 0

        for i in k ... best_dp.count-k-1 {
            let s = dp[i].sum + dp[best_dp[i-k].left!].sum + dp[best_dp[i+k].right!].sum
            if s > ans_sum {
                ans_sum = s
                ans = [best_dp[i-k].left!, i, best_dp[i+k].right!]
            }
        }

        return ans
    }
}