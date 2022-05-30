/**
 * 29. Divide Two Integers
 * https://leetcode.com/problems/divide-two-integers/
 */

/**
 * @param {number} dividend
 * @param {number} divisor
 * @return {number}
 */
var divide = function (dividend, divisor) {
    let ans = 0
    let minus = (dividend < 0 && divisor > 0) || (dividend > 0 && divisor < 0)

    divisor = divisor > 0 ? divisor : -divisor
    dividend = dividend > 0 ? dividend : -dividend

    if (divisor === 1) {
        ans = dividend
    } else {
        while (dividend >= divisor) {
            ans++
            dividend -= divisor
        }
    }

    return minus ? Math.max(-ans, -2147483648) : Math.min(ans, 2147483647)
};