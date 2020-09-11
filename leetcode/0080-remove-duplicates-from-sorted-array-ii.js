/**
 * 80. Remove Duplicates from Sorted Array II
 * https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/
 */

/**
 * @param {number[]} nums
 * @return {number}
 */
var removeDuplicates = function (nums) {
    let len = nums.length;
    if (len > 2)
        for (let i = len - 1; i > 1; i--)
            if (nums[i] === nums[i - 1] && nums[i - 1] === nums[i - 2])
                nums.splice(i, 1);
    return nums.length;
};