/**
 * 1461. Check If a String Contains All Binary Codes of Size K
 * https://leetcode.com/problems/check-if-a-string-contains-all-binary-codes-of-size-k/
 */

/**
 * @param {string} s
 * @param {number} k
 * @return {boolean}
 */
var hasAllCodes = function (s, k) {
    let map = {}
    for (let i = 0; i <= s.length - k; i++) map[s.substring(i, i + k)] = true
    return Object.keys(map).length === Math.pow(2, k)
};