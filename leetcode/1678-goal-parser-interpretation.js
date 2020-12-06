/**
 * 1678. Goal Parser Interpretation
 * https://leetcode.com/problems/goal-parser-interpretation/
 */

/**
 * @param {string} command
 * @return {string}
 */
var interpret = function (command) {
    return command.split("()").join("o").split("(al)").join("al")
};