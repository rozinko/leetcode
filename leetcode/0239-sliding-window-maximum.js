/**
 * 239. Sliding Window Maximum
 * https://leetcode.com/problems/sliding-window-maximum/
 */

/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number[]}
 */
var maxSlidingWindow = function (nums, k) {
    if (k == 1) return nums;
    if (k == nums.length) return [Math.max(...nums)];

    let window = [nums[0]];
    let result = [];

    let i = 0;
    let prev = nums[0];
    let max = Math.max(...nums.slice(0, k));

    while (i < k - 1) window.push(nums[i++]);

    while (i < nums.length) {
        prev = window.shift();
        window.push(nums[i]);
        max = nums[i] > max ? nums[i] : (prev < max ? max : Math.max(...window));
        result.push(max);
        i++;
    }

    return result;
};