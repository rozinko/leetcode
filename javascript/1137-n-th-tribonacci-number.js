/**
 * 1137. N-th Tribonacci Number
 * https://leetcode.com/problems/n-th-tribonacci-number/
 */

/**
 * @param {number} n
 * @return {number}
 */
var tribonacci = function (n) {
  let results = [0, 1, 1];
  while (results.length <= n) {
    let next = results.length;
    results.push(results[next - 1] + results[next - 2] + results[next - 3]);
  }
  return results[n];
};
