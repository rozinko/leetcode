/**
 * 73. Set Matrix Zeroes
 * https://leetcode.com/problems/set-matrix-zeroes/
 **/

class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var rows: Set<Int> = [], cols: Set<Int> = []

        for i in 0 ..< matrix.count {
            for j in 0 ..< matrix[i].count where matrix[i][j] == 0 {
                rows.insert(i)
                cols.insert(j)
            }
        }

        for row in rows {
            for j in 0 ..< matrix[row].count {
                matrix[row][j] = 0
            }
        }

        for i in 0 ..< matrix.count {
            for col in cols {
                matrix[i][col] = 0
            }
        }
    }
}