/**
 * 152. Maximum Product Subarray
 * https://leetcode.com/problems/maximum-product-subarray/
 */

/**
 * @param {number[]} nums
 * @return {number}
 */
var maxProduct = function (nums) {
    let res = Math.max.apply(null, nums);
    let count = nums.length;

    let buf = nums[0];
    for (let i = 1; i < count - 1; i++) {
        buf = buf ? buf * nums[i] : nums[i];
        if (buf > res) res = buf;
    }

    buf = nums[count - 1];
    for (i = count - 2; i >= 0; i--) {
        buf = buf ? buf * nums[i] : nums[i];
        if (buf > res) res = buf;
    }

    return res;
};