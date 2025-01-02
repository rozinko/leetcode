/**
 * 1346. Check If N and Its Double Exist
 * https://leetcode.com/problems/check-if-n-and-its-double-exist/
 **/

class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var hashmap: [Int: Bool] = [:]

        for num in arr {
            if (hashmap[num * 2] != nil) || (num % 2 == 0 && hashmap[num / 2] != nil) {
                return true
            }
            hashmap[num] = true
        }

        return false
    }
}