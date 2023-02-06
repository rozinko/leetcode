/**
 * 941. Valid Mountain Array
 * https://leetcode.com/problems/valid-mountain-array/
 */

/**
 * @param {number[]} arr
 * @return {boolean}
 */
var validMountainArray = function (arr) {
    let i = 0, j = arr.length - 1

    while (arr[i + 1] !== undefined && arr[i] < arr[i + 1]) i++
    while (arr[j - 1] !== undefined && arr[j] < arr[j - 1]) j--

    return i === j && i > 0 && j < arr.length - 1
};