/**
 * 2432. The Employee That Worked on the Longest Task
 * https://leetcode.com/problems/the-employee-that-worked-on-the-longest-task/
 **/

class Solution {
    func hardestWorker(_ n: Int, _ logs: [[Int]]) -> Int {
        var ans = (id: logs[0][0], time: logs[0][1])

        for i in 1 ..< logs.count {
            if logs[i][1] - logs[i-1][1] > ans.time || (logs[i][1] - logs[i-1][1] == ans.time && logs[i][0] < ans.id) {
                ans = (logs[i][0], logs[i][1] - logs[i-1][1])
            }
        }

        return ans.id
    }
}