/**
 * 2225. Find Players With Zero or One Losses
 * https://leetcode.com/problems/find-players-with-zero-or-one-losses/
 */

/**
 * @param {number[][]} matches
 * @return {number[][]}
 */
var findWinners = function (matches) {
  let map = {},
    zero = [],
    one = [];
  matches.forEach(([w, l]) => {
    map[w] = 0 + (map[w] ?? 0);
    map[l] = 1 + (map[l] ?? 0);
  });

  for (const [k, v] of Object.entries(map))
    if (v === 0) {
      zero.push(k);
    } else if (v === 1) {
      one.push(k);
    }

  return [zero, one];
};
