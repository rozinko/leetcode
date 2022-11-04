/**
 * 345. Reverse Vowels of a String
 * https://leetcode.com/problems/reverse-vowels-of-a-string/
 */

/**
 * @param {string} s
 * @return {string}
 */
var reverseVowels = function (s) {
  let l = -1,
    r = s.length,
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];

  s = s.split('');

  while (++l < --r) {
    while (!vowels.includes(s[l]) && l < s.length) l++;
    while (!vowels.includes(s[r]) && r > 0) r--;
    if (l < r) [s[l], s[r]] = [s[r], s[l]];
  }

  return s.join('');
};
