/**
 * 2492. Minimum Score of a Path Between Two Cities
 * https://leetcode.com/problems/minimum-score-of-a-path-between-two-cities/
 */

/**
 * @param {number} n
 * @param {number[][]} roads
 * @return {number}
 */
var minScore = function (n, roads) {
  let map = {};
  let result = roads[0][2];

  map[1] = true;
  map[n] = true;

  let stack = roads;
  let flag = true;
  while (flag && stack.length) {
    flag = false;
    let newstack = [];
    for (let i = 0; i < stack.length; i++) {
      if (map[stack[i][0]] !== undefined || map[stack[i][1]] !== undefined) {
        flag = true;
        map[stack[i][0]] = true;
        map[stack[i][1]] = true;
        result = stack[i][2] < result ? stack[i][2] : result;
      } else {
        newstack.push(stack[i]);
      }
    }
    stack = newstack;
  }

  return result;
};
