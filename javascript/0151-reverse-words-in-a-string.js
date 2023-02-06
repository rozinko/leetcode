/**
 * 151. Reverse Words in a String
 * https://leetcode.com/problems/reverse-words-in-a-string/
 */

/**
 * @param {string} s
 * @return {string}
 */
var reverseWords = function (s) {
  return s
    .replace(/\s{2,}/g, ' ')
    .trim()
    .split(' ')
    .reverse()
    .join(' ');
};
