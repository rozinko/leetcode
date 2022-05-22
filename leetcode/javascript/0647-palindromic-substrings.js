/**
 * 647. Palindromic Substrings
 * https://leetcode.com/problems/palindromic-substrings/
 */

/**
 * @param {string} s
 * @return {number}
 */
var countSubstrings = function (s) {
    // add all a, b, c, ...
    let ans = s.length

    // check aba, abcba, ...
    for (let i = 1; i < s.length - 1; i++) {
        let left = i - 1
        let right = i + 1
        while (left >= 0 && right < s.length && s[left] === s[right]) {
            ans++
            left--
            right++
        }
    }

    // check abba, abccba, ...
    for (let i = 0; i < s.length - 1; i++) {
        let left = i
        let right = i + 1
        while (left >= 0 && right < s.length && s[left] === s[right]) {
            ans++
            left--
            right++
        }
    }

    return ans
};