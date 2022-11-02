/**
 * 35. Search Insert Position
 * https://leetcode.com/problems/search-insert-position/
 */

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number}
 */
var searchInsert = function (nums, target) {
  let l = -1,
    r = nums.length;

  while (l + 1 < r) {
    let m = Math.floor((l + r) / 2);
    if (nums[m] >= target) {
      r = m;
    } else {
      l = m;
    }
  }

  return r;
};
