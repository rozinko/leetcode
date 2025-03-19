/**
 * 2579. Count Total Number of Colored Cells
 * https://leetcode.com/problems/count-total-number-of-colored-cells/
 **/

class Solution {
    func coloredCells(_ n: Int) -> Int {
        return n * n + (n-1) * (n-1)
    }
}