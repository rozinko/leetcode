/**
 * 1704. Determine if String Halves Are Alike
 * https://leetcode.com/problems/determine-if-string-halves-are-alike/
 */

/**
 * @param {string} s
 * @return {boolean}
 */
var halvesAreAlike = function (s) {
  let count = [0, 0];
  s.split('').forEach((ch, i, arr) => {
    if (['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'].indexOf(ch) >= 0)
      count[Math.floor((i * 2) / arr.length)]++;
  });
  return count[0] === count[1];
};
