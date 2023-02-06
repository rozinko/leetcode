/**
 * 216. Combination Sum III
 * https://leetcode.com/problems/combination-sum-iii/
 */

/**
 * @param {number} k
 * @param {number} n
 * @return {number[][]}
 */
var combinationSum3 = function (k, n) {
    let ans = []
    let now = [1, 2, 3, 4, 5, 6, 7, 8, 9].slice(0, k)
    let sum = now.reduce((a, b) => a + b, 0)

    while (now[0] <= 10 - k) {
        if (sum === n) ans.push([...now])
        if (sum > n) {
            now[k - 1] += 10
            sum += 10
        } else {
            now[k - 1]++
            sum++
        }

        let i = 1
        while (i < k && now[0] <= 10 - k)
            if (now[i] > 9) {
                now[i - 1]++
                sum = sum - now[i] + now[i - 1] + 2
                now[i] = now[i - 1] + 1
                while (++i < k) {
                    sum = sum - now[i] + now[i - 1] + 1
                    now[i] = now[i - 1] + 1
                }
                i = 1
            } else {
                i++
            }
    }

    return ans
};