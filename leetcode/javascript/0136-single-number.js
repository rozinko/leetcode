/**
 * 136. Single Number
 * https://leetcode.com/problems/single-number/
 */

/**
 * @param {number[]} nums
 * @return {number}
 */
var singleNumber = function (nums) {
  return nums.reduce((a, b) => a ^ b, 0);
};
