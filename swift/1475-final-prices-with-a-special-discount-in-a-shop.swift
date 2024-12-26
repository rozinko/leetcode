/**
 * 1475. Final Prices With a Special Discount in a Shop
 * https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/
 **/

class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var ans: [Int] = []
        for i in 0..<prices.count {
            var j = i + 1
            while j < prices.count && prices[j] > prices[i] { j += 1 }
            ans.append( prices[i] - (j < prices.count ? prices[j] : 0))
        }
        return ans
    }
}