/**
 * 36. Valid Sudoku
 * https://leetcode.com/problems/valid-sudoku/
 */

/**
 * @param {character[][]} board
 * @return {boolean}
 */
var isValidSudoku = function (board) {
  let rows = [{}, {}, {}, {}, {}, {}, {}, {}, {}];
  let cols = [{}, {}, {}, {}, {}, {}, {}, {}, {}];
  let boxs = [{}, {}, {}, {}, {}, {}, {}, {}, {}];

  for (let r = 0; r < 9; r++)
    for (let c = 0; c < 9; c++)
      if (board[r][c] !== '.') {
        let v = board[r][c];
        let b = Math.floor(c / 3) * 3 + Math.floor(r / 3);
        if (rows[r][v] === undefined) rows[r][v] = true;
        else return false;
        if (cols[c][v] === undefined) cols[c][v] = true;
        else return false;
        if (boxs[b][v] === undefined) boxs[b][v] = true;
        else return false;
      }

  return true;
};
