/**
 * 1267. Count Servers that Communicate
 * https://leetcode.com/problems/count-servers-that-communicate/
 **/

class Solution {
    func countServers(_ grid: [[Int]]) -> Int {
        let rows = grid.count
        let cols = grid[0].count

        var map = [Int](repeating: 0, count: rows + cols)

        for r in 0 ..< rows {
            for c in 0 ..< cols where grid[r][c] == 1 {
                map[r] += 1
                map[rows+c] += 1
            }
        }

        var ans = 0

        for r in 0 ..< rows {
            for c in 0 ..< cols where grid[r][c] == 1 && (map[r] > 1 || map[rows+c] > 1) {
                ans += 1
            }
        }

        return ans
    }
}