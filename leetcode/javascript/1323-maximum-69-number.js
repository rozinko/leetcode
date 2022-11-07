/**
 * 1323. Maximum 69 Number
 * https://leetcode.com/problems/maximum-69-number/
 */

/**
 * @param {number} num
 * @return {number}
 */
var maximum69Number = function (num) {
  return parseInt(num.toString().replace('6', '9'));
};
