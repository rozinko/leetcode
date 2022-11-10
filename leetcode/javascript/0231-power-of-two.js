/**
 * 231. Power of Two
 * https://leetcode.com/problems/power-of-two/
 */

/**
 * @param {number} n
 * @return {boolean}
 */
var isPowerOfTwo = function (n) {
  return (
    n
      .toString(2)
      .split('')
      .map((a) => parseInt(a))
      .reduce((a, b) => a + b) === 1
  );
};
