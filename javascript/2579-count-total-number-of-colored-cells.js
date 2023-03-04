/**
 * 2579. Count Total Number of Colored Cells
 * https://leetcode.com/problems/count-total-number-of-colored-cells/
 */

/**
 * @param {number} n
 * @return {number}
 */
var coloredCells = function (n) {
  return n === 1 ? 1 : 4 * (n - 1) + coloredCells(n - 1);
};
