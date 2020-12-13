/**
 * 1688. Count of Matches in Tournament
 * https://leetcode.com/problems/count-of-matches-in-tournament/
 *
 * https://leetcode.com/problems/count-of-matches-in-tournament/discuss/970401/PHP-Swift-Easy-solution
 */

/**
 * @param {number} n
 * @return {number}
 */
var numberOfMatches = function (n) {
    let result = 0
    while (n > 1) {
        result += Math.floor(n / 2)
        n = Math.ceil(n / 2)
    }
    return result
};