/**
 * 118. Pascal's Triangle
 * https://leetcode.com/problems/pascals-triangle/
 **/

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle = [[1]], rows = 1
        while rows < numRows {
            rows += 1
            triangle.append( [1] )
            for i in 1 ..< rows-1 {
                triangle[rows-1].append( triangle[rows-2][i-1] + triangle[rows-2][i] )
            }
            triangle[rows-1].append(1)
        }
        return triangle
    }
}