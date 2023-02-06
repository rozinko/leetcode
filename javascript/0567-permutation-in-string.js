/**
 * 567. Permutation in String
 * https://leetcode.com/problems/permutation-in-string/
 */

/**
 * @param {string} s1
 * @param {string} s2
 * @return {boolean}
 */
var checkInclusion = function (s1, s2) {
  let s1obj = {},
    s2obj = {};
  let i = 0,
    j = 0;

  while (i < s1.length) {
    s1obj[s1[i]] = 1 + (s1obj[s1[i]] ?? 0);
    s2obj[s2[i]] = 1 + (s2obj[s2[i]] ?? 0);
    i++;
  }

  while (
    !Object.keys({ ...s1obj, ...s2obj }).every(
      (key) => s1obj[key] === s2obj[key]
    ) &&
    i < s2.length
  ) {
    s2obj[s2[i]] = 1 + (s2obj[s2[i]] ?? 0);
    s2obj[s2[j]]--;
    if (s2obj[s2[j]] === 0) delete s2obj[s2[j]];
    i++;
    j++;
  }

  return Object.keys({ ...s1obj, ...s2obj }).every(
    (key) => s1obj[key] === s2obj[key]
  );
};
