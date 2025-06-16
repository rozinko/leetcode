/**
 * 119. Pascal's Triangle II
 * https://leetcode.com/problems/pascals-triangle-ii/
 **/

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var row = [1], nowIndex = 0
        while nowIndex < rowIndex {
            nowIndex += 1
            var temp = [1]
            for i in 1 ..< nowIndex {
                temp.append( row[i-1] + row[i] )
            }
            temp.append(1)
            row = temp
        }
        return row
    }
}