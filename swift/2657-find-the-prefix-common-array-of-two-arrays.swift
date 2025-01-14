/**
 * 2657. Find the Prefix Common Array of Two Arrays
 * https://leetcode.com/problems/find-the-prefix-common-array-of-two-arrays/
 **/

class Solution {
    func findThePrefixCommonArray(_ A: [Int], _ B: [Int]) -> [Int] {
        var temp = [Int: Bool](), score = 0
        var ans = [Int]()

        var i = 0
        while i < A.count {
            if A[i] == B[i] {
                score += 1
            } else {
                if temp[A[i]] != nil { score += 1 } else { temp[A[i]] = true }
                if temp[B[i]] != nil { score += 1 } else { temp[B[i]] = true }
            }

            i += 1
            ans.append(score)
        }

        return ans
    }
}