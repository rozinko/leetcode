/**
 * 2200. Find All K-Distant Indices in an Array
 * https://leetcode.com/problems/find-all-k-distant-indices-in-an-array/
 **/

class Solution {
    func findKDistantIndices(_ nums: [Int], _ key: Int, _ k: Int) -> [Int] {
        var ans: [Int] = []
        var from = 0
        for i in 0 ..< nums.count where nums[i] == key {
            for j in max(from, i - k) ... i + k where j < nums.count {
                ans.append(j)
            }
            from = i + k + 1
        }
        return ans
    }
}