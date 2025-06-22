/**
 * 1399. Count Largest Group
 * https://leetcode.com/problems/count-largest-group/
 **/

class SolutionBest {
    func countLargestGroup(_ n: Int) -> Int {
        var dict: [Int: Int] = [:] // sum: count

        for i in 1 ... n {
            var sum = 0, j = i
            while j > 0 {
                sum += j % 10
                j /= 10
            }    
            dict[sum, default: 0] += 1
        }

        let maxElements = dict.values.max()
        return dict.values.filter { $0 == maxElements }.count
    }
}

class SolutionLow {
    func countLargestGroup(_ n: Int) -> Int {
        var dict: [Int: Int] = [:] // sum: count

        for i in 1 ... n {
            let sum = i < 10 ? i : Array(String(i)).map { Int(String($0))! }.reduce(0, +)
            dict[sum, default: 0] += 1
        }

        let maxElements = dict.values.max()
        return dict.values.filter { $0 == maxElements }.count
    }
}