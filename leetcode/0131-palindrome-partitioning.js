/**
 * 131. Palindrome Partitioning
 * https://leetcode.com/problems/palindrome-partitioning/
 */

var result = []

var recursion = function (s, now, from, to) {
    for (let i = from + 1; i <= to; i++) {
        let str = s.substring(from, i)
        if (i - from === 1 || str === str.split('').reverse().join(''))
            recursion(s, [...now, str], i, to)
    }
    if (from === to) result.push(now)
}

/**
 * @param {string} s
 * @return {string[][]}
 */
var partition = function (s) {
    result = []
    recursion(s, [], 0, s.length)
    return result
};