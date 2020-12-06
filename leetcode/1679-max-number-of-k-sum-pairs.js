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
    let map = [], pairs = 0
    for (let i = 0; i < nums.length; i++)
        if (map[k - nums[i]] !== undefined && map[k - nums[i]]) {
            map[k - nums[i]]--
            pairs++
        } else {
            map[nums[i]] = map[nums[i]] == undefined ? 1 : map[nums[i]] + 1
        }
    return pairs
};