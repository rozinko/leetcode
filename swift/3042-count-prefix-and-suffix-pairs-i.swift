/**
 * 3042. Count Prefix and Suffix Pairs I
 * https://leetcode.com/problems/count-prefix-and-suffix-pairs-i/
 **/

class Solution {
    func countPrefixSuffixPairs(_ words: [String]) -> Int {
        var ans = 0

        for (i, smaller) in words.enumerated() {
            for (j, bigger) in words.enumerated() where bigger.count >= smaller.count && i < j {
                let len = smaller.count
                let pref = String(bigger[..<bigger.index(bigger.startIndex, offsetBy: len)])
                let suff = String(bigger[bigger.index(bigger.endIndex, offsetBy: -len)...])

                if smaller == pref && smaller == suff { ans += 1}
            }
        }

        return ans
    }
}

class Solution2 {
    func isPrefixAndSuffix(_ smaller: String, _ bigger: String) -> Bool {
        return bigger.count >= smaller.count && bigger.hasPrefix(smaller) && bigger.hasSuffix(smaller)
    }

    func countPrefixSuffixPairs(_ words: [String]) -> Int {
        var ans = 0

        for (i, smaller) in words.enumerated() {
            for (j, bigger) in words.enumerated() where i < j {
                ans += isPrefixAndSuffix(smaller, bigger) ? 1 : 0
            }
        }

        return ans
    }
}