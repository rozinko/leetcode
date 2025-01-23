/**
 * 1765. Map of Highest Peak
 * https://leetcode.com/problems/map-of-highest-peak/
 **/

class Solution {
    func highestPeak(_ isWater: [[Int]]) -> [[Int]] {
        let rows = isWater.count
        let cols = isWater[0].count

        var grid = isWater.map { $0.map { $0 == 1 ? 0 : rows * cols } }

        var stack: [(r: Int, c: Int)] = []

        for (r, row) in grid.enumerated() {
            for (c, cell) in row.enumerated() where cell == 0 {
                stack.append( (r, c) )
            }
        }

        let dirs: [(r: Int, c: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]

        var stackShift = 0
        while stackShift < stack.count {
            let (r, c) = stack[stackShift]
            let v = grid[r][c]

            for d in dirs {
                let dr = d.r + r
                let dc = d.c + c
                if dr >= 0 && dc >= 0 && dr < rows && dc < cols && grid[dr][dc] > v + 1 {
                    grid[dr][dc] = v + 1
                    stack.append( (dr, dc) )
                }
            }

            stackShift += 1
        }

        return grid
    }
}