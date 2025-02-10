/**
 * 3160. Find the Number of Distinct Colors Among the Balls
 * https://leetcode.com/problems/find-the-number-of-distinct-colors-among-the-balls/
 **/

class Solution {
    func queryResults(_ limit: Int, _ queries: [[Int]]) -> [Int] {
        var ans: [Int] = []

        var now = 0
        var balls: [Int: Int] = [:]
        var colors: [Int: Int] = [:]

        for query in queries {
            let ball = query[0]
            let color = query[1]

            colors[color, default: 0] += 1
            if colors[color]! == 1 {
                now += 1
            }

            if balls[ball] != nil {
                let otherColor = balls[ball]!
                colors[otherColor]! -= 1
                if colors[otherColor]! == 0 {
                    now -= 1
                }
            }

            balls[ball] = color

            ans.append(now)
        }


        return ans
    }
}