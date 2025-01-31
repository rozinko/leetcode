/**
 * 2658. Maximum Number of Fish in a Grid
 * https://leetcode.com/problems/maximum-number-of-fish-in-a-grid/
 **/

class Solution {
    func findMaxFish(_ grid: [[Int]]) -> Int {
        var grid = grid
        var ans = grid.map({ $0.max()! }).max()!, last = ans

        // magic is here!
        let rows = grid.count
        let cols = grid[0].count

        func isValidCoord(_ r: Int, _ c: Int) -> Bool { return r >= 0 && c >= 0 && r < rows && c < cols }
        
        while last > 0 {
            var r = 0, c = 0
            while isValidCoord(r, c) && grid[r][c] == 0 {
                c += 1
                if c >= cols { c = 0; r += 1 }
            }
            if !isValidCoord(r, c) { break }

            // r, c - first water with fish!
            let directions: [(r: Int, c: Int)] = [(0, 1), (0, -1), (1, 0), (-1, 0)]
            var stack: [(r: Int, c: Int)] = [ (r, c) ]
            last = 0

            while let pop = stack.popLast() {
                last += grid[pop.r][pop.c]
                grid[pop.r][pop.c] = 0

                for d in directions where isValidCoord(pop.r+d.r, pop.c+d.c) && grid[pop.r+d.r][pop.c+d.c] > 0 {
                    stack.append( (pop.r+d.r, pop.c+d.c) )
                }
            }

            ans = max(ans, last)
        }

        // end of magic :)

        return ans
    }
}