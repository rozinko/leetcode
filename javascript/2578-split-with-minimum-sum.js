/**
 * 2578. Split With Minimum Sum
 * https://leetcode.com/problems/split-with-minimum-sum/
 */

/**
 * @param {number} num
 * @return {number}
 */
var splitNum = function (num) {
  let nums = num.toString().split('');
  nums.sort();
  let num1 = '',
    num2 = '';
  for (let i = 0; i < nums.length; i++)
    if (i % 2 == 0) {
      num1 += nums[i];
    } else {
      num2 += nums[i];
    }
  return parseInt(num1) + parseInt(num2);
};
