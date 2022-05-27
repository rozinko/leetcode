/**
 * 1342. Number of Steps to Reduce a Number to Zero
 * https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/
 */

/**
 * @param {number} num
 * @return {number}
 */
var numberOfSteps = function (num) {
    let steps = 0
    while (num) {
        num = num % 2 ? num - 1 : num / 2
        steps++
    }
    return steps
};

var numberOfSteps2 = function (num) {
    return num ? 1 + numberOfSteps(num % 2 ? num - 1 : num / 2) : 0
};