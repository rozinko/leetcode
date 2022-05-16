/**
 * 1091. Shortest Path in Binary Matrix
 * https://leetcode.com/problems/shortest-path-in-binary-matrix/
 */

/**
 * @param {number[][]} grid
 * @return {number}
 */
var shortestPathBinaryMatrix = function (grid) {
    let len = grid.length
    if (len === 1) return 1
    if (grid[0][0] === 1 || grid[len - 1][len - 1] === 1) return -1

    let steps = 1
    let stack = [[0, 0]]
    let directions = [[-1, -1], [-1, 0], [-1, 1], [0, -1], [0, 1], [1, -1], [1, 0], [1, 1]]

    while (stack.length) {
        let newStack = []

        for (let pos of stack) {
            if (pos[0] < 0 || pos[1] < 0 || pos[0] >= len || pos[1] >= len || grid[pos[0]][pos[1]] === 1) continue
            if (pos[0] === len - 1 && pos[1] === len - 1) return steps

            for (let d of directions) newStack.push([pos[0] + d[0], pos[1] + d[1]])

            grid[pos[0]][pos[1]] = 1
        }

        stack = newStack
        steps++
    }

    return -1
};