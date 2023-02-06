/**
 * 844. Backspace String Compare
 * https://leetcode.com/problems/backspace-string-compare/
 */

/**
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */
var backspaceCompare = function (s, t) {
    let ss = [], tt = []

    for (let ch of s) if (ch === '#') ss.pop(); else ss.push(ch)
    for (let ch of t) if (ch === '#') tt.pop(); else tt.push(ch)

    return ss.join() === tt.join()
};