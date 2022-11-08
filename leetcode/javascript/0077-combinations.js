/**
 * 77. Combinations
 * https://leetcode.com/problems/combinations/
 */

/**
 * @param {number} n
 * @param {number} k
 * @return {number[][]}
 */
var combine = function (n, k) {
  let result = [];

  if (k === 1) {
    for (let i = k; i <= n; i++) result.push([i]);
    return result;
  }

  let subresult = combine(n - 1, k - 1);

  for (let i = k; i <= n; i++)
    for (let j = 0; j < subresult.length; j++)
      if (subresult[j][subresult[j].length - 1] < i)
        result.push([...subresult[j], i]);

  return result;
};
