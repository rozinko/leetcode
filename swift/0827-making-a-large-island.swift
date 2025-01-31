/**
 * 827. Making A Large Island
 * https://leetcode.com/problems/making-a-large-island/
 **/

class Solution {
    func largestIsland(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var grid = grid.map { $0.map { $0 == 1 ? -1 : 0} }
        var ids: [Int] = [ 0 ] // id 0 не будет

        let directions: [(r: Int, c: Int)] = [ (0, 1), (0, -1), (1, 0), (-1, 0) ]
        func isValidCoord(_ r: Int, _ c: Int) -> Bool { return r >= 0 && c >= 0 && r < n && c < n }

        // mark cells by id
        var flag = true
        while flag {
            flag = false

            // find first with -1
            var r = 0, c = 0
            let nextId = ids.count

            while isValidCoord(r, c) && grid[r][c] != -1 {
                c += 1
                if c >= n { c = 0; r += 1 }
            }

            if !isValidCoord(r, c) { break }

            // r, c valid coord with -1
            flag = true
            var counting = 0
            var stack: [(r: Int, c: Int)] = [ (r, c) ]

            while let cell = stack.popLast() {
                if grid[cell.r][cell.c] != -1 { continue }

                counting += 1
                grid[cell.r][cell.c] = nextId
                
                for d in directions where isValidCoord(cell.r+d.r, cell.c+d.c) && grid[cell.r+d.r][cell.c+d.c] == -1 {
                    stack.append( (cell.r+d.r, cell.c+d.c) )
                }
            }

            // add id
            ids.append(counting)
        }

        // find best cell to change 0 to 1
        var ans = ids.max()!

        for r in 0 ..< n {
            for c in 0 ..< n where grid[r][c] == 0 {
                let neighborsIds = directions.map({
                        // directions to real (r,c)
                        (r: $0.r+r, c: $0.c+c)
                    }).filter({
                        // validate coord
                        isValidCoord($0.r, $0.c) && grid[$0.r][$0.c] > 0
                    }).map({
                        // (r,c) to ids
                        grid[$0.r][$0.c]
                    })
                // get unique ids and
                // sum of neighbors + 1 cell (cell 0 to 1)
                let now = Array(Set(neighborsIds)).map({ ids[$0] }).reduce(1, +)

                ans = max(ans, now)
            }
        }

        return ans
    }
}