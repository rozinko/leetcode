/**
 * 704. Binary Search
 * https://leetcode.com/problems/binary-search/
 */

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number}
 */
var search = function (nums, target) {
  let l = 0,
    r = nums.length - 1;
  while (l + 1 < r && nums[l] !== target && nums[r] !== target) {
    let m = Math.floor((l + r) / 2);
    if (nums[m] <= target) {
      l = m;
    } else {
      r = m;
    }
  }
  return nums[l] == target ? l : nums[r] == target ? r : -1;
};
