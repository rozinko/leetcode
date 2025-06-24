/**
 * 2706. Buy Two Chocolates
 * https://leetcode.com/problems/buy-two-chocolates/
 **/

class Solution {
    func buyChoco(_ prices: [Int], _ money: Int) -> Int {
        let prices = prices.sorted()
        return prices[0] + prices[1] <= money ? money - prices[0] - prices[1] : money
    }
}