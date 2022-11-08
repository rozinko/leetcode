/**
 * 46. Permutations
 * https://leetcode.com/problems/permutations/
 */

/**
 * @param {number[]} nums
 * @return {number[][]}
 */
var permute = function (nums) {
  if (nums.length === 1) return [nums];

  let result = [];

  for (let i = 0; i < nums.length; i++) {
    let subresult = permute([...nums.slice(0, i), ...nums.slice(i + 1)]);
    for (let j = 0; j < subresult.length; j++)
      result.push([...subresult[j], nums[i]]);
  }

  return result;
};
