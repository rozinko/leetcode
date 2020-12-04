/**
 * 22. Generate Parentheses
 * https://leetcode.com/problems/generate-parentheses/
 */

/**
 * @param {number} n
 * @param {string} s
 * @return {string[]}
 */
var generateParenthesis = function (n, s) {
    if (s === undefined) s = "()";
    if (n === 1) return [s];
    let result = [];
    for (let i = 1; i <= s.length; i++) {
        result = result.concat(generateParenthesis(n - 1, s.substr(0, i) + "()" + s.substr(i)));
    }
    return result.filter((value, index, self) => self.indexOf(value) === index);
};