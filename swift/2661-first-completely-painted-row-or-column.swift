/**
 * 2661. First Completely Painted Row or Column
 * https://leetcode.com/problems/first-completely-painted-row-or-column/
 **/

class Solution {
    func firstCompleteIndex(_ arr: [Int], _ mat: [[Int]]) -> Int {
        let rows = mat.count
        let cols = mat[0].count

        var rc = [(r: Int, c: Int)](repeating: (-1, -1), count: rows * cols + 1)
        for r in 0 ..< rows {
            for c in 0 ..< cols {
                rc[mat[r][c]] = (r, c)
            }
        }

        var rCounts = [Int](repeating: 0, count: rows)
        var cCounts = [Int](repeating: 0, count: cols)

        for (i, val) in arr.enumerated() {
            let (r, c) = rc[val]
            rCounts[r] += 1
            cCounts[c] += 1
            if rCounts[r] >= cols || cCounts[c] >= rows {
                return i
            }
        }

        return 0
    }
}