/**
 * 1523. Count Odd Numbers in an Interval Range
 * https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/
 */

/**
 * @param {number} low
 * @param {number} high
 * @return {number}
 */
var countOdds = function (low, high) {
  return (
    Math.floor((high - low) / 2) + (low % 2 === 1 || high % 2 === 1 ? 1 : 0)
  );
};
