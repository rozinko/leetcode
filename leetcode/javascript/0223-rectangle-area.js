/**
 * 223. Rectangle Area
 * https://leetcode.com/problems/rectangle-area/
 */

/**
 * @param {number} ax1
 * @param {number} ay1
 * @param {number} ax2
 * @param {number} ay2
 * @param {number} bx1
 * @param {number} by1
 * @param {number} bx2
 * @param {number} by2
 * @return {number}
 */
var computeArea = function (ax1, ay1, ax2, ay2, bx1, by1, bx2, by2) {
  let cx1 = Math.max(ax1, bx1),
    cx2 = Math.min(ax2, bx2),
    cy1 = Math.max(ay1, by1),
    cy2 = Math.min(ay2, by2);
  return (
    (ax2 - ax1) * (ay2 - ay1) +
    (bx2 - bx1) * (by2 - by1) -
    (cx1 < cx2 && cy1 < cy2 ? (cx2 - cx1) * (cy2 - cy1) : 0)
  );
};
