/**
 * 2379. Minimum Recolors to Get K Consecutive Black Blocks
 * https://leetcode.com/problems/minimum-recolors-to-get-k-consecutive-black-blocks/
 **/

class Solution {
    func minimumRecolors(_ blocks: String, _ k: Int) -> Int {
        let costs = Array(blocks).map { $0 == "W" ? 1 : 0 }
        var now = 0
        for i in 0 ..< k { now += costs[i] }
        var ans = now, l = 0, r = k-1
        while r < costs.count - 1 {
            r += 1
            now += costs[r] - costs[l]
            l += 1
            ans = min(ans, now)
        }
        return ans
    }
}