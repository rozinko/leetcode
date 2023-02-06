/**
 * 190. Reverse Bits
 * https://leetcode.com/problems/reverse-bits/
 */

/**
 * @param {number} n - a positive integer
 * @return {number} - a positive integer
 */
var reverseBits = function (n) {
  let str = n.toString(2).split('').reverse().join('');
  return parseInt(str + '0'.repeat(32 - str.length), 2);
};

/**
 * @param {number} n - a positive integer
 * @return {number} - a positive integer
 */
var reverseBits2 = function (n) {
  return parseInt(
    n.toString(2).split('').reverse().join('').padEnd(32, '0'),
    2
  );
};
