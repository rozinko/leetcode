/**
 * 2017. Grid Game
 * https://leetcode.com/problems/grid-game/
 **/

class Solution {
    func gridGame(_ grid: [[Int]]) -> Int {
        var down = 0, up = grid[0].reduce(0, +)
        var ans = up
        
        for i in 0 ..< grid[0].count {
            up -= grid[0][i]
            if i > 0 { down += grid[1][i-1] }
            ans = min(ans, max(up, down))
        }

        return ans
    }
}