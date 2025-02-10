/**
 * 1790. Check if One String Swap Can Make Strings Equal
 * https://leetcode.com/problems/check-if-one-string-swap-can-make-strings-equal/
 **/

class Solution {
    func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
        let n = s1.count
        let chs1 = Array(s1)
        let chs2 = Array(s2)

        var map: [Character: Int] = [:]
        var notEqualPos = 0
        
        for i in 0 ..< n {
            map[chs1[i], default: 0] += 1
            map[chs2[i], default: 0] -= 1
            if chs1[i] != chs2[i] { notEqualPos += 1 }
        }
        
        return map.values.filter({ $0 != 0 }).isEmpty && notEqualPos <= 2
    }
}