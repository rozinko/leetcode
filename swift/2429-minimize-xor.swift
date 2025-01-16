/**
 * 2429. Minimize XOR
 * https://leetcode.com/problems/minimize-xor/
 **/

class Solution {
    func minimizeXor(_ num1: Int, _ num2: Int) -> Int {
        let num1BitsCount = Array(String(num1, radix: 2)).filter{ $0 == "1" }.count
        let num2BitsCount = Array(String(num2, radix: 2)).filter{ $0 == "1" }.count

        if num1BitsCount == num2BitsCount { return num1 }

        var ans = Array(String(num1, radix: 2))
        
        var i = ans.count - 1
        let changeToZeros = ans.filter({$0 == "1"}).count > num2BitsCount
        while ans.filter({$0 == "1"}).count != num2BitsCount && i >= 0 {
            ans[i] = changeToZeros ? "0" : "1"
            i -= 1
        }
        
        while ans.filter({$0 == "1"}).count != num2BitsCount {
            ans.append("1")
        }

        return Int(String(ans), radix: 2) ?? 0
    }
}