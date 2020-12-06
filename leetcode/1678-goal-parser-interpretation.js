/**
 * 1678. Goal Parser Interpretation
 * https://leetcode.com/problems/goal-parser-interpretation/
 *
 * https://leetcode.com/problems/goal-parser-interpretation/discuss/961778/PHP-JavaScript-Swift-One-line-100-fast-with-explanation
 */

/**
 * @param {string} command
 * @return {string}
 */
var interpret = function (command) {
    return command.split("()").join("o").split("(al)").join("al")
};