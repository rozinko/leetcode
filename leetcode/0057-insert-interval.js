/**
 * 57. Insert Interval
 * https://leetcode.com/problems/insert-interval/
 *
 * TODO: Runtime: 144 ms, faster than 6.01% of JavaScript online submissions for Insert Interval.
 */

/**
 * @param {number[][]} intervals
 * @param {number[]} newInterval
 * @return {number[][]}
 */
var insert = function (intervals, newInterval) {
    let length = intervals.length;

    // if no intervals
    if (!length) {
        return [newInterval];
    }

    // if new interval is over than all
    if (newInterval[0] > intervals[length - 1][1]) {
        intervals.push(newInterval);
        return intervals;
    }

    // if new interval is lower than all
    if (newInterval[1] < intervals[0][0]) {
        intervals.unshift(newInterval);
        return intervals;
    }

    // ok,go dor()
    for (let i = length - 1; i >= 0; i--) {
        // if need merge intervals
        if (i && newInterval[1] >= intervals[i][0] && newInterval[0] <= intervals[i - 1][1]) {
            intervals[i - 1][1] = intervals[i][1];
            intervals.splice(i, 1);
            continue;
        }
        // insert new interval between two intervals
        if (i && newInterval[1] < intervals[i][0] && newInterval[0] > intervals[i - 1][1]) {
            intervals.splice(i, 0, newInterval);
            return intervals;
        }
        // correct intervals at from and end positions
        if (newInterval[1] > intervals[i][1] && newInterval[0] <= intervals[i][1])
            intervals[i][1] = newInterval[1];
        if (newInterval[0] < intervals[i][0] && newInterval[1] >= intervals[i][0])
            intervals[i][0] = newInterval[0];
    }

    return intervals;
};