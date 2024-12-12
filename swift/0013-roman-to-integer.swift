/**
 * 13. Roman to Integer
 * https://leetcode.com/problems/roman-to-integer/
 **/

class Solution {
    func romanToInt(_ s: String) -> Int {
        var i = 0
        let chars = Array(s)
        var ans = 0

        while i < chars.count && chars[i] == "M" { ans += 1000; i += 1 }
        if chars.count - i >= 2 && chars[i] == "C" && chars[i+1] == "M" { ans += 900; i += 2}
        if chars.count - i >= 1 && chars[i] == "D" { ans += 500; i += 1 }
        if chars.count - i >= 2 && chars[i] == "C" && chars[i+1] == "D" { ans += 400; i += 2}
        while i < chars.count && chars[i] == "C" { ans += 100; i += 1 }
        if chars.count - i >= 2 && chars[i] == "X" && chars[i+1] == "C" { ans += 90; i += 2}
        if chars.count - i >= 1 && chars[i] == "L" { ans += 50; i += 1 }
        if chars.count - i >= 2 && chars[i] == "X" && chars[i+1] == "L" { ans += 40; i += 2}
        while i < chars.count && chars[i] == "X" { ans += 10; i += 1 }
        if chars.count - i >= 2 && chars[i] == "I" && chars[i+1] == "X" { ans += 9; i += 2}
        if chars.count - i >= 1 && chars[i] == "V" { ans += 5; i += 1 }
        if chars.count - i >= 2 && chars[i] == "I" && chars[i+1] == "V" { ans += 4; i += 2}
        while i < chars.count && chars[i] == "I" { ans += 1; i += 1 }
        
        return ans
    }
}