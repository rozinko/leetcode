/**
 * 17. Letter Combinations of a Phone Number
 * https://leetcode.com/problems/letter-combinations-of-a-phone-number/
 */

/**
 * @param {string} digits
 * @return {string[]}
 */
var letterCombinations = function (digits) {
    let chars = {
        '2': 'abc',
        '3': 'def',
        '4': 'ghi',
        '5': 'jkl',
        '6': 'mno',
        '7': 'pqrs',
        '8': 'tuv',
        '9': 'wxyz',
    }
    let stack = digits.length ? chars[digits[0]].split('') : []

    for (let i = 1; i < digits.length; i++) {
        let newStack = []
        for (let ch of chars[digits[i]])
            for (let st of stack)
                newStack.push(st + ch)
        stack = newStack
    }

    return stack
};