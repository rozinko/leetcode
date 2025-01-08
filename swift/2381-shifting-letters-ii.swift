/**
 * 2381. Shifting Letters II
 * https://leetcode.com/problems/shifting-letters-ii/
 **/

class Solution {
    func shiftingLetters(_ s: String, _ shifts: [[Int]]) -> String {
        var scalars = s.utf8.map { Int($0) }
        var changes: [Int] = [Int](repeating: 0, count: s.count + 1)

        for shift in shifts {
            changes[shift[0]] += shift[2] > 0 ? 1 : -1
            changes[shift[1]+1] += shift[2] > 0 ? -1 : 1
        }

        var change = 0
        for (i, _) in scalars.enumerated() {
            change += changes[i]
            scalars[i] += change
            while scalars[i] < 97 { scalars[i] += 26 }
            while scalars[i] > 122 { scalars[i] -= 26 }
        }

        return String(scalars.map{ Character(UnicodeScalar($0)!) })
    }
}