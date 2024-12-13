/**
 * TODO: найти вариант лучше
 * 
 * 15. 3Sum
 * https://leetcode.com/problems/3sum/
 **/

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sorted = nums.sorted()
        var appended: [String: Bool] = [:]
        
        var ans: [[Int]] = []
        var left = 0, right = 0

        for middle in 1...sorted.count-2 {
            left = middle - 1
            right = middle + 1

            while left >= 0 && right <= sorted.count-1 {
                switch sorted[left] + sorted[right] + sorted[middle] {
                    case 0:
                        let triplet = [sorted[left], sorted[middle], sorted[right]]
                        let tripletHash = triplet.map { String($0) }.joined(separator: ",")
                        if appended[tripletHash] == nil {
                            appended[tripletHash] = true
                            ans.append(triplet)
                        }
                        if left > 0 { left -= 1 } else { right += 1 }
                    case ..<0:
                        right += 1
                    case 1...:
                        left -= 1
                    default:
                        if left > 0 { left -= 1 } else { right += 1 }
                }
            }
        }

        return ans
    }
}