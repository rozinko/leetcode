/**
 * 268. Missing Number
 * https://leetcode.com/problems/missing-number/
 */

/**
 * @param {number[]} nums
 * @return {number}
 */
var missingNumber = function (nums) {
    let ans = nums.length, i = 0
    while (i < nums.length) ans ^= nums[i] ^ i++
    return ans
};