/**
 * 542. 01 Matrix
 * https://leetcode.com/problems/01-matrix/
 */

/**
 * @param {number[][]} mat
 * @return {number[][]}
 */
var updateMatrix = function (mat) {
  let flag = true;
  while (flag) {
    flag = false;
    for (let i = 0; i < mat.length; i++)
      for (let j = 0; j < mat[i].length; j++)
        if (mat[i][j] !== 0) {
          let val =
            1 +
            Math.min(
              i > 0 ? mat[i - 1][j] : mat[i][j],
              i < mat.length - 1 ? mat[i + 1][j] : mat[i][j],
              j > 0 ? mat[i][j - 1] : mat[i][j],
              j < mat[i].length - 1 ? mat[i][j + 1] : mat[i][j]
            );

          if (mat[i][j] !== val) {
            mat[i][j] = val;
            flag = true;
          }
        }
  }
  return mat;
};
