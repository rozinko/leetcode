/**
 * 1641. Count Sorted Vowel Strings
 * https://leetcode.com/problems/count-sorted-vowel-strings/
 */

/**
 * @param {number} n
 * @param {number} from
 * @return {number}
 */
var countVowelStrings = function (n, from = 0) {
    if (n === 1) return 5 - from

    let result = 0
    for (let i = from; i < 5; i++) result += countVowelStrings(n - 1, i)
    return result
};