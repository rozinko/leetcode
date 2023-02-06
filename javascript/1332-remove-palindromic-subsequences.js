/**
 * 1332. Remove Palindromic Subsequences
 * https://leetcode.com/problems/remove-palindromic-subsequences/
 */

/**
 * @param {string} s
 * @return {number}
 */
var removePalindromeSub = function (s) {
    return s === s.split('').reverse().join('') ? 1 : 2
};