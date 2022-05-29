/**
 * 318. Maximum Product of Word Lengths
 * https://leetcode.com/problems/maximum-product-of-word-lengths/
 */

/**
 * @param {string[]} words
 * @return {number}
 */
var maxProduct = function (words) {
    let ans = 0

    words = words.sort((a, b) => b.length - a.length)

    for (let i = 0; i < words.length - 1 && words[i].length * words[i].length > ans; i++) {
        let chs = []
        for (let ch of words[i]) chs[ch] = 1
        for (let j = i + 1; j < words.length && words[i].length * words[j].length > ans; j++) {
            check_word: {
                for (let ch of words[j])
                    if (chs[ch] !== undefined)
                        break check_word
                ans = Math.max(ans, words[i].length * words[j].length)
            }
        }
    }

    return ans
};