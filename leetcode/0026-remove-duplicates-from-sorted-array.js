/**
 * 26. Remove Duplicates from Sorted Array
 * https://leetcode.com/problems/remove-duplicates-from-sorted-array/
 */

/**
 * @param {number[]} nums
 * @return {number}
 */
var removeDuplicates = function (nums) {
    let len = nums.length;
    if (len > 1)
        for (let i = len - 1; i; i--)
            if (nums[i] === nums[i - 1])
                nums.splice(i, 1);
    return nums.length;
};