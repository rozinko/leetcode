/**
 * 2094. Finding 3-Digit Even Numbers
 * https://leetcode.com/problems/finding-3-digit-even-numbers/
 **/

class Solution {
    func findEvenNumbers(_ digits: [Int]) -> [Int] {
        var ans: Set<Int> = []

        for (i, a) in digits.enumerated() where a != 0 {
            for (j, b) in digits.enumerated() where i != j {
                for (k, c) in digits.enumerated() where k != j && k != i && c % 2 == 0 {
                    ans.insert( a*100 + b*10 + c )
                }
            }
        }

        return ans.sorted()
    }
}