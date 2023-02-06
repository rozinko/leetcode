/**
 * 1015. Smallest Integer Divisible by K
 * https://leetcode.com/problems/smallest-integer-divisible-by-k/
 */

/**
 * @param {number} K
 * @return {number}
 */
var smallestRepunitDivByK = function (K) {
    let i = 1;
    let N = 1;
    let mods = {};

    while (N < K) {
        N = N * 10 + 1;
        i++
    }

    while (true) {
        if (N % K === 0) return i;
        if (mods[N % K] === true) return -1;
        mods[N % K] = true;
        N = (N % K) * 10 + 1;
        i++;
    }
};