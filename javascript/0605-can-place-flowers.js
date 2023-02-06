/**
 * 605. Can Place Flowers
 * https://leetcode.com/problems/can-place-flowers/
 */

/**
 * @param {number[]} flowerbed
 * @param {number} n
 * @return {boolean}
 */
var canPlaceFlowers = function (flowerbed, n) {
    let i = 0
    while (i < flowerbed.length && n) {
        if (!flowerbed[i] && !flowerbed[i - 1] && !flowerbed[i + 1]) {
            n--
            i++
        }
        i++
    }
    return !n
};