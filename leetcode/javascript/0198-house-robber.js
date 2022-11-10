/**
 * 198. House Robber
 * https://leetcode.com/problems/house-robber/
 */

/**
 * @param {number[]} nums
 * @return {number}
 */
var rob = function (nums) {
  let sums = [];
  for (let i = 0; i < nums.length; i++)
    sums.push(Math.max(nums[i] + (sums[i - 2] ?? 0), sums[i - 1] ?? 0));
  return sums[sums.length - 1] ?? 0;
};
