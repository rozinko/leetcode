/**
 * 1492. The kth Factor of n
 * https://leetcode.com/problems/the-kth-factor-of-n/
 *
 * https://leetcode.com/problems/the-kth-factor-of-n/discuss/959289/PHP-JavaScript-Swift-Easy-solution
 */

/**
 * @param {number} n
 * @param {number} k
 * @return {number}
 */
var kthFactor = function (n, k) {
    for (let i = 1; i <= n; i++)
        if (n % i === 0)
            if (k > 1) k--; else return i;
    return -1;
};