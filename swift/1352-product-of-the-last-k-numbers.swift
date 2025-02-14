/**
 * 1352. Product of the Last K Numbers
 * https://leetcode.com/problems/product-of-the-last-k-numbers/
 **/


class ProductOfNumbers {

    var stack: [Int]

    init() {
        stack = []
    }
    
    func add(_ num: Int) {
        if num == 0 {
            stack = []
        } else {
            stack.append(num * (stack.last ?? 1))
        }
    }
    
    func getProduct(_ k: Int) -> Int {
        return k > stack.count ? 0 : stack.last! / (stack.count - 1 - k >= 0 ? stack[stack.count - 1 - k] : 1)
    }
}