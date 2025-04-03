/**
 * 2140. Solving Questions With Brainpower
 * https://leetcode.com/problems/solving-questions-with-brainpower/
 **/

class Solution {
    func mostPoints(_ questions: [[Int]]) -> Int {
        var solvedPoints = [Int: Int]()
        var havePoints = 0, ans = 0

        for (i, (nowPoints, skipQuestions)) in questions.map({ ($0[0], $0[1]) }).enumerated() {
            havePoints = max(havePoints, solvedPoints[i] ?? 0)
            solvedPoints[i + skipQuestions + 1] = max(solvedPoints[i + skipQuestions + 1, default: 0], havePoints + nowPoints)

            ans = max(ans, havePoints + nowPoints)
        }

        print(solvedPoints)

        return ans
    }
}