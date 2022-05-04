/**
 * 1679. Max Number of K-Sum Pairs
 * https://leetcode.com/problems/max-number-of-k-sum-pairs/
 *
 * https://leetcode.com/problems/max-number-of-k-sum-pairs/discuss/961869/PHP-JavaScript-O(n)-solution-100-faster
 */

/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var maxOperations = function (nums, k) {
    let map = {}, pairs = 0

    for (let num of nums)
        if (map[k - num]) {
            map[k - num]--
            pairs++
        } else {
            map[num] = 1 + (map[num] ?? 0)
        }

    return pairs
};