/**
 * 354. Russian Doll Envelopes
 * https://leetcode.com/problems/russian-doll-envelopes/
 */

/**
 * @param {number[][]} envelopes
 * @return {number}
 */
var maxEnvelopes = function (envelopes) {
    let firstGTE = function (arr, val) {
        let l = 0, r = arr.length - 1, ans = -1

        while (l <= r) {
            let mid = Math.floor((l + r) / 2)
            if (arr[mid] >= val) {
                ans = mid
                r = mid - 1
            } else {
                l = mid + 1
            }
        }

        return ans
    }

    const dp = []
    envelopes.sort((a, b) => a[0] === b[0] ? b[1] - a[1] : a[0] - b[0])

    for (let env of envelopes) {
        let index = firstGTE(dp, env[1])
        if (index === -1) {
            dp.push(env[1])
        } else {
            dp[index] = env[1]
        }
    }

    return dp.length
};