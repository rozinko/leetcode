/**
 * 1368. Minimum Cost to Make at Least One Valid Path in a Grid
 * https://leetcode.com/problems/minimum-cost-to-make-at-least-one-valid-path-in-a-grid/
 **/

class Solution {
    func minCost(_ grid: [[Int]]) -> Int {
        let rows = grid.count
        let cols = grid[0].count

        let directions: [(row: Int, col: Int, val: Int)] = [(0, 1, 1), (0, -1, 2), (1, 0, 3), (-1, 0, 4)]

        var cost = [[Int]](repeating: [Int](repeating: 1000000, count: cols), count: rows)
        cost[0][0] = 0
        
        var stack: [(row: Int, col: Int)] = [ (0, 0) ]
        var next: [(row: Int, col: Int)] = []

        while !stack.isEmpty {
            let cell = stack.removeLast()
            let nowCost = cost[cell.row][cell.col]

            for d in directions {
                let dCell = (row: cell.row + d.row, col: cell.col + d.col)
                let sameCost = grid[cell.row][cell.col] == d.val
                let dCost = nowCost + (sameCost ? 0 : 1)
                if dCell.row >= 0 && dCell.col >= 0 && dCell.row < rows && dCell.col < cols {
                    if cost[dCell.row][dCell.col] > dCost {
                        cost[dCell.row][dCell.col] = dCost
                        if sameCost {
                            stack.append(dCell)
                        } else {
                            next.append(dCell)
                        }
                    }
                }
            }

            if stack.isEmpty {
                stack = next
                next = []
            }
        }

        return cost.last?.last ?? 0
    }
}