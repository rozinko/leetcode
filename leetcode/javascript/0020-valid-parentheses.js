/**
 * 20. Valid Parentheses
 * https://leetcode.com/problems/valid-parentheses/
 */

/**
 * @param {string} s
 * @return {boolean}
 */
var isValid = function (s) {
    let stack = [];

    for (let i = 0; i < s.length; i++) {
        switch (s[i]) {
            case '(':
            case '{':
            case '[':
                stack.push(s[i])
                break
            case ')':
                if (stack.pop() !== '(') return false
                break
            case ']':
                if (stack.pop() !== '[') return false
                break
            case '}':
                if (stack.pop() !== '{') return false
                break
            default:
                return false
        }
    }

    return stack.length === 0
};

/**
 * @param {string} s
 * @return {boolean}
 */
var isValid2 = function (s) {
    let prev = ""
    while (s !== prev) {
        prev = s
        s = s.replace('()', '').replace('[]', '').replace('{}', '')
    }
    return s === ""
};