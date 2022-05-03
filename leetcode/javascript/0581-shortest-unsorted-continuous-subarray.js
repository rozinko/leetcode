/**
 * 581. Shortest Unsorted Continuous Subarray
 * https://leetcode.com/problems/shortest-unsorted-continuous-subarray/
 */

/**
 * @param {number[]} nums
 * @return {number}
 */
var findUnsortedSubarray = function (nums) {
    let sorted = [...nums].sort((a, b) => a - b)
    let l = 0, r = nums.length - 1

    while (l <= r && nums[l] === sorted[l]) l++
    while (l <= r && nums[r] === sorted[r]) r--

    return r - l + 1 > 0 ? r - l + 1 : 0
};