/**
 * 32. Longest Valid Parentheses
 * https://leetcode.com/problems/longest-valid-parentheses/
 */

/**
 * @param {string} s
 * @return {number}
 */
var longestValidParentheses = function (s) {
    let stack = [0]

    for (let ch of s)
        if (ch === '(') {
            // open tag
            stack.push('(')
        } else {
            // close tag
            if (stack.length && stack[stack.length - 1] == '(') {
                stack[stack.length - 1] = 2
            } else if (stack.length > 1 && stack[stack.length - 2] == '(') {
                stack[stack.length - 2] = 2
            } else {
                stack.push(')')
            }
            while (stack.length > 1 && !isNaN(stack[stack.length - 1]) && !isNaN(stack[stack.length - 2])) {
                let last = stack.pop()
                stack[stack.length - 1] += last
            }
        }

    return Math.max(...stack.filter(v => !isNaN(v)))
};