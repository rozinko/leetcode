/**
 * 374. Guess Number Higher or Lower
 * https://leetcode.com/problems/guess-number-higher-or-lower/
 */

/**
 * Forward declaration of guess API.
 * @param {number} num   your guess
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0
 * var guess = function(num) {}
 */

/**
 * @param {number} n
 * @return {number}
 */
var guessNumber = function (n) {
  if (guess(n) === 0) return n;
  let l = -1,
    r = n;
  while (l < r) {
    let m = Math.floor((l + r) / 2);
    let request = guess(m);
    switch (request) {
      case 1:
        l = m;
        break;
      case -1:
        r = m;
        break;
      case 0:
        return m;
    }
  }
};
