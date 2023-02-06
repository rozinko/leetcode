/**
 * 1544. Make The String Great
 * https://leetcode.com/problems/make-the-string-great/
 */

/**
 * @param {string} s
 * @return {string}
 */
var makeGood = function (s) {
  for (let i = 0; i < s.length - 1; i++)
    if (
      s[i] !== s[i + 1] &&
      (s[i] === s[i + 1].toUpperCase() || s[i].toUpperCase() === s[i + 1])
    )
      return makeGood(s.slice(0, i) + s.slice(i + 2));
  return s;
};
