/**
 * 278. First Bad Version
 * https://leetcode.com/problems/first-bad-version/
 */

/**
 * Definition for isBadVersion()
 *
 * @param {integer} version number
 * @return {boolean} whether the version is bad
 * isBadVersion = function(version) {
 *     ...
 * };
 */

/**
 * @param {function} isBadVersion()
 * @return {function}
 */
var solution = function (isBadVersion) {
  /**
   * @param {integer} n Total versions
   * @return {integer} The first bad version
   */
  return function (n) {
    let lastGood = -1,
      firstBad = n + 1;

    while (lastGood + 1 < firstBad) {
      let m = Math.floor((lastGood + firstBad) / 2);
      if (isBadVersion(m)) {
        firstBad = m;
      } else {
        lastGood = m;
      }
    }

    return firstBad;
  };
};
