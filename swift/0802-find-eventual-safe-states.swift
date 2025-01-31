/**
 * 802. Find Eventual Safe States
 * https://leetcode.com/problems/find-eventual-safe-states/
 **/

class Solution {
    func eventualSafeNodes(_ graph: [[Int]]) -> [Int] {
        var map = [Int: (safe: Bool?, from: [Int])]()
        var ans: [Int] = []

        for (i, to) in graph.enumerated() {
            if map[i] == nil { map[i] = (nil, []) }
            if to.isEmpty {
                map[i]!.safe = true
                ans.append(i)
            }
            for node in to {
                if map[node] == nil { map[node] = (nil, []) }
                map[node]!.from.append(i)
            }
        }

        var changed = true
        while changed == true {
            changed = false

            let checkNodes = ans.flatMap { map[$0]?.from ?? [] }.filter { map[$0]?.safe != true }

            for i in checkNodes {
                let isAllNextNodesSafe = graph[i].map { map[$0]?.safe == true }.reduce(true, { $0 && $1 })

                if isAllNextNodesSafe && map[i]?.safe != true {
                    ans.append(i)
                    map[i]?.safe = true
                    changed = true
                }
            }
        }

        return ans.sorted()
    }
}