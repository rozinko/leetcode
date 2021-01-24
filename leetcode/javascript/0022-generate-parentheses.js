/**
 * 22. Generate Parentheses
 * https://leetcode.com/problems/generate-parentheses/
 */

/**
 * @param {number} n
 * @param {string} s
 * @return {string[]}
 */
var generateParenthesis = function (n) {
    if (n <= 1) return n === 1 ? ["()"] : [""]

    let result = [], map = []

    for (let i = 0; i <= n - 1; i++) map.push(generateParenthesis(i))

    for (let i = 0; i <= n - 1; i++)
        for (let one in map[i])
            for (let two in map[n - 1 - i])
                result.push("(" + map[n - 1 - i][two] + ")" + map[i][one])

    return result
};