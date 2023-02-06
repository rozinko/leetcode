/**
 * 1207. Unique Number of Occurrences
 * https://leetcode.com/problems/unique-number-of-occurrences/
 */

/**
 * @param {number[]} arr
 * @return {boolean}
 */
var uniqueOccurrences = function (arr) {
  let map = {};
  arr.forEach((v) => (map[v] = 1 + (map[v] ?? 0)));
  counts = Object.values(map);
  return (
    counts.length ===
    counts.filter((value, index, self) => {
      return self.indexOf(value) === index;
    }).length
  );
};
