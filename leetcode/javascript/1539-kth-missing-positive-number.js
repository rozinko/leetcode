/**
 * 1539. Kth Missing Positive Number
 * https://leetcode.com/problems/kth-missing-positive-number/
 *
 * https://leetcode.com/problems/kth-missing-positive-number/discuss/1004549/C%2B%2B-PHP-JavaScript-Swift-Easy-short-and-faster-solution-without-counting
 */

/**
 * @param {number[]} arr
 * @param {number} k
 * @return {number}
 */
var findKthPositive = function (arr, k) {
    let i = 0
    while (i < arr.length && arr[i] < i + k + 1) i++
    return i + k
};