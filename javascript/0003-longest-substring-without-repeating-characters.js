/**
 * 3. Longest Substring Without Repeating Characters
 * https://leetcode.com/problems/longest-substring-without-repeating-characters/
 **/

/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLongestSubstring = function (s) {
  if (s.length <= 1) return s.length;

  let l = 0,
    r = 0,
    max = 1,
    now = 1,
    letters = {};
  letters[s[l]] = true;

  while (++r < s.length) {
    while (letters[s[r]] !== undefined && letters[s[r]]) {
      letters[s[l++]] = false;
      now--;
    }
    letters[s[r]] = true;
    now++;
    max = Math.max(max, now);
  }

  return max;
};
