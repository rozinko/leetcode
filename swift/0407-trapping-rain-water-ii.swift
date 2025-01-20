/**
 * 407. Trapping Rain Water II
 * https://leetcode.com/problems/trapping-rain-water-ii/
 **/

class Solution {
    func trapRainWater(_ heightMap: [[Int]]) -> Int {
        let rows = heightMap.count
        let cols = heightMap[0].count

        var grid = heightMap

        var ans = 0

        // cell status
        // 0 not visited, 1 border or visited
        var stack: [(r: Int, c: Int, h: Int)] = []
        var cellStatus = [[Int]](repeating: [Int](repeating: 0, count: cols), count: rows)
        for r in 0 ..< rows {
            for c in 0 ..< cols {
                if r == 0 || c == 0 || r == rows-1 || c == cols-1 {
                    cellStatus[r][c] = 1
                    stack.append( (r, c, grid[r][c]) )
                }
            }
        }
        stack.sort { $0.h > $1.h }

        let directions: [(r: Int, c: Int)] = [(0, -1), (0, 1), (-1, 0), (1, 0)]

        while !stack.isEmpty {
            let cell = stack.removeLast()

            for d in directions {
                let r = cell.r + d.r
                let c = cell.c + d.c
                if r >= 0 && c >= 0 && r < rows && c < cols && cellStatus[r][c] == 0 {
                    // not visited cell
                    if grid[r][c] < cell.h {
                        // less height! it's a water here!
                        ans += cell.h - grid[r][c]
                        grid[r][c] = cell.h
                    }
                    // mark as border and add to stack
                    cellStatus[r][c] = 1
                    stack.append( (r, c, grid[r][c]) )
                }
            }

            // sort stack before remove next cell
            stack.sort { $0.h > $1.h }
        }

        return ans
    }
}