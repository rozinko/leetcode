/**
 * 88. Merge Sorted Array
 * https://leetcode.com/problems/merge-sorted-array/
 */

/**
 * @param {number[]} nums1
 * @param {number} m
 * @param {number[]} nums2
 * @param {number} n
 * @return {void} Do not return anything, modify nums1 in-place instead.
 */
var merge = function (nums1, m, nums2, n) {
    for (let i = 0; i < n; i++) nums1[m + i] = nums2[i]
    nums1.sort((a, b) => a - b)
};

/**
 * @param {number[]} nums1
 * @param {number} m
 * @param {number[]} nums2
 * @param {number} n
 * @return {void} Do not return anything, modify nums1 in-place instead.
 */
var merge2 = function (nums1, m, nums2, n) {
    let i = 0

    while (i < m && n) {
        if (nums1[i] <= nums2[0]) {
            i++
        } else {
            let num = nums1[i], j = 0
            nums1[i++] = nums2[j]

            while (j + 1 < n && nums2[j + 1] < num)
                nums2[j] = nums2[++j]
            nums2[j] = num
        }
    }

    for (let j = 0; j < n; j++)
        nums1[m + j] = nums2[j]
};