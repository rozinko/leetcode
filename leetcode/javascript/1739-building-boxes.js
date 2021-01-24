/**
 * 1739. Building Boxes
 * https://leetcode.com/problems/building-boxes/
 *
 * https://leetcode.com/problems/building-boxes/discuss/1032612/PHP-Swift-JavaScript-Easy-and-faster-solutions
 */

/**
 * @param {number} n
 * @return {number}
 */
var minimumBoxes = function (n) {
    let s = 0, x = 0, next = 1

    while (s + x + next <= n) {
        s += x + next
        x += next
        next++
    }

    next = 1
    while (s < n) {
        s += next
        next++
        x++
    }

    return x
};