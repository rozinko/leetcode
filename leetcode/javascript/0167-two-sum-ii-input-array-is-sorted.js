/**
 * 167. Two Sum II - Input Array Is Sorted
 * https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
 */

/**
 * @param {number[]} numbers
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function (numbers, target) {
    let nums = []

    for (let i = 0; i < numbers.length; i++)
        if (nums[target - numbers[i]] !== undefined) {
            return [nums[target - numbers[i]], i + 1]
        } else {
            nums[numbers[i]] = i + 1
        }
};