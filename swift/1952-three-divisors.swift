/**
 * 1952. Three Divisors
 * https://leetcode.com/problems/three-divisors/
 **/

class Solution {
    func isThree(_ n: Int) -> Bool {
        var divisors = 0

        for i in 1 ... n where n % i == 0 {
            divisors += 1
            if divisors > 3 { return false }
        }

        return divisors == 3
    }
}