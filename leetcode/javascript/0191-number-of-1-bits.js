/**
 * 191. Number of 1 Bits
 * https://leetcode.com/problems/number-of-1-bits/
 */

/**
 * @param {number} n - a positive integer
 * @return {number}
 */
var hammingWeight = function (n) {
  let m = 2147483648,
    ans = 0;
  while (m) {
    if (n & m) ans++;
    m >>>= 1;
  }
  return ans;
};

var hammingWeight2 = function (n) {
  return n
    .toString(2)
    .split('')
    .filter((a) => a === '1').length;
};

var hammingWeight3 = function (n) {
  return n
    .toString(2)
    .split('')
    .map((a) => parseInt(a))
    .reduce((a, b) => a + b);
};
