/**
 * 11. Container With Most Water
 * https://leetcode.com/problems/container-with-most-water/
 */

/**
 * @param {number[]} height
 * @return {number}
 */
var maxArea = function (height) {
    let maxWater = 0, left = 0, right = height.length - 1;

    while (left < right) {
        maxWater = Math.max(maxWater, Math.min(height[left], height[right]) * (right - left));
        if (height[left] > height[right]) right--; else left++;
    }

    return maxWater;
};