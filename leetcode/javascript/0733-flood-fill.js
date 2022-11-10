/**
 * 733. Flood Fill
 * https://leetcode.com/problems/flood-fill/
 */

/**
 * @param {number[][]} image
 * @param {number} sr
 * @param {number} sc
 * @param {number} color
 * @return {number[][]}
 */
var floodFill = function (image, sr, sc, color) {
  let stack = [[sr, sc]];
  let oldColor = image[sr][sc];

  if (color === oldColor) return image;

  while (stack.length > 0) {
    let [r, c] = stack.pop();
    image[r][c] = color;
    Array([r - 1, c], [r, c - 1], [r + 1, c], [r, c + 1]).forEach(
      ([rr, cc]) => {
        if (
          image[rr] !== undefined &&
          image[rr][cc] !== undefined &&
          image[rr][cc] === oldColor
        )
          stack.push([rr, cc]);
      }
    );
  }

  return image;
};
