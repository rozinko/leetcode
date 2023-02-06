/**
 * 695. Max Area of Island
 * https://leetcode.com/problems/max-area-of-island/
 */

/**
 * @param {number[][]} grid
 * @return {number}
 */
var maxAreaOfIsland = function (grid) {
  let max = 0;

  for (let i = 0; i < grid.length; i++)
    for (let j = 0; j < grid[i].length; j++)
      if (grid[i][j] == 1) {
        let now = 0,
          stack = [[i, j]];

        while (stack.length > 0) {
          let [ii, jj] = stack.pop();
          if (
            grid[ii] !== undefined &&
            grid[ii][jj] !== undefined &&
            grid[ii][jj] === 1
          ) {
            grid[ii][jj] = 2;
            now++;
            stack.push([ii - 1, jj], [ii + 1, jj], [ii, jj - 1], [ii, jj + 1]);
          }
        }

        max = Math.max(now, max);
      }

  return max;
};
