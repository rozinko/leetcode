/**
 * 59. Spiral Matrix II
 * https://leetcode.com/problems/spiral-matrix-ii/
 */

/**
 * @param {number} n
 * @return {number[][]}
 */
var generateMatrix = function (n) {
    let result = Array(n).fill([]).map(() => {
        return Array(n).fill(0)
    })
    let x = 0, y = 0, dx = 1, dy = 0
    for (let i = 1; i <= n * n; i++) {
        result[y][x] = i
        if (x + dx < 0 || x + dx >= n || y + dy < 0 || y + dy >= n || result[y + dy][x + dx] > 0)
            [dy, dx] = [dx, dx !== 0 ? 0 : dy === 1 ? -1 : 1]
        x += dx
        y += dy
    }
    return result
};