/**
 * 994. Rotting Oranges
 * https://leetcode.com/problems/rotting-oranges/
 */

/**
 * @param {number[][]} grid
 * @return {number}
 */
var orangesRotting = function (grid) {
  let mins = 0;
  let stack = [];
  let fresh = grid.flatMap((a) => a).filter((a) => a === 1).length;

  if (fresh === 0) return 0;

  for (let i = 0; i < grid.length; i++)
    for (let j = 0; j < grid[i].length; j++)
      if (grid[i][j] === 2) stack.push([i, j]);

  while (stack.length > 0) {
    let newStack = [],
      minsAdd = 0;
    while (stack.length > 0) {
      let [i, j] = stack.pop();
      Array([i - 1, j], [i + 1, j], [i, j - 1], [i, j + 1]).forEach(
        ([ii, jj]) => {
          if (
            grid[ii] !== undefined &&
            grid[ii][jj] !== undefined &&
            grid[ii][jj] === 1
          ) {
            grid[ii][jj] = 2;
            fresh--;
            newStack.push([ii, jj]);
            minsAdd = 1;
          }
        }
      );
    }
    stack.push(...newStack);
    mins += minsAdd;
  }

  return fresh === 0 ? mins : -1;
};
