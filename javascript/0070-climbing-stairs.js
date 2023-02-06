/**
 * 70. Climbing Stairs
 * https://leetcode.com/problems/climbing-stairs/
 */

/**
 * @param {number} n
 * @return {number}
 */
var climbStairs = function (n) {
  if (n <= 3) return n;
  let prev = 2,
    last = 3;
  for (let i = 4; i <= n; i++) [prev, last] = [last, prev + last];
  return last;
};
