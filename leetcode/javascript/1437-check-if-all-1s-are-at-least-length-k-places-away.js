/**
 * 1437. Check If All 1's Are at Least Length K Places Away
 * https://leetcode.com/problems/check-if-all-1s-are-at-least-length-k-places-away/
 */

/**
 * @param {number[]} nums
 * @param {number} k
 * @return {boolean}
 */
var kLengthApart = function (nums, k) {
    let pos = -k - 1
    for (i in nums)
        if (nums[i]) {
            if (i - pos <= k) return false
            pos = i
        }
    return true
};