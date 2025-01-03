/**
 * 70. Climbing Stairs
 * https://leetcode.com/problems/climbing-stairs/
 **/

class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 3 {
            return n
        }

        var prev = 2, last = 3
        for _ in 4 ... n {
            (prev, last) = (last, last + prev)
        }

        return last
    }
}