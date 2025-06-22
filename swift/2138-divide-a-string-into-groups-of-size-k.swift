/**
 * 2138. Divide a String Into Groups of Size k
 * https://leetcode.com/problems/divide-a-string-into-groups-of-size-k/
 **/

class Solution {
    func divideString(_ s: String, _ k: Int, _ fill: Character) -> [String] {
        var parts: [String] = [], now: String = ""

        for ch in s {
            now += String(ch)
            if now.count == k {
                parts.append(now)
                now = ""
            }
        }

        if now.count > 0 {
            while now.count < k {
                now += String(fill)
            }
            parts.append(now)
        }

        return parts
    }
}