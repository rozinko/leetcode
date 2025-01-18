/**
 * 2465. Number of Distinct Averages
 * https://leetcode.com/problems/number-of-distinct-averages/
 **/

class Solution {
    func distinctAverages(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        var averages = [Double: Int]()

        for i in 0 ..< nums.count/2 {
            let avg = Double(nums[i] + nums[nums.count-1-i]) / 2
            averages[avg, default: 0] += 1
        }

        return averages.keys.count
    }
}