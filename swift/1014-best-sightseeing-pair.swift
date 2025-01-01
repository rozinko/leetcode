/**
 * 1014. Best Sightseeing Pair
 * https://leetcode.com/problems/best-sightseeing-pair/
 **/

class Solution {
    func maxScoreSightseeingPair(_ values: [Int]) -> Int {
        var ans = values[0] + values[1] - 1

        for i in 0 ..< values.count-1 {
            let isum = values[i] + i
            for j in i+1 ..< values.count {
                ans = max(ans, isum + values[j] - j)
            }
        }

        return ans
    }
}

class Solution2 {
    func maxScoreSightseeingPair(_ values: [Int]) -> Int {
        var ans = values[0] + values[1] - 1

        var pref_sums: [Int] = [ values[0] ]

        for i in 1 ..< values.count {
            pref_sums.append( max(pref_sums[i-1], values[i] + i) )
        }

        var post_sums: [Int] = [ values[values.count-1] - values.count + 1 ]

        for j in (0 ... values.count-2).reversed() {
            post_sums.append( max(post_sums[post_sums.count-1], values[j] - j) )
        }

        post_sums = post_sums.reversed()

        for i in 0 ..< values.count-1 {
            ans = max(ans, pref_sums[i] + post_sums[i+1])
        }

        return ans
    }
}