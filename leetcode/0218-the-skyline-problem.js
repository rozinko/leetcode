/**
 * 218. The Skyline Problem
 * https://leetcode.com/problems/the-skyline-problem/
 */

/**
 * @param {number[][]} buildings
 * @return {number[][]}
 */
var getSkyline = function (buildings) {
    let points = [], active = [], i = 0, x, hNew = 0, hPrev = 0;

    while (i < buildings.length) {
        x = buildings[i][0];

        while (buildings[i] !== undefined && buildings[i][0] == x) {
            hNew = Math.max(buildings[i][2], hPrev, hNew);
            active.push([buildings[i][1], buildings[i][2]]);
            i++;
        }

        active.sort(function (a, b) {
            return b[0] > a[0] ? 0 : -1;
        });

        while (active.length && x == active[active.length - 1][0])
            if (active.pop()[1] >= hPrev)
                hNew = -1;

        if (hNew == -1) hNew = active.reduce(function (res, v) {
            return res > v[1] ? res : v[1];
        }, 0);

        if (hNew !== hPrev) {
            points.push([x, hNew]);
            hPrev = hNew;
        }

        while (
            active.length &&
            (buildings[i] == undefined || active[active.length - 1][0] < buildings[i][0])
            ) {
            x = active[active.length - 1][0];

            while (active.length && x == active[active.length - 1][0])
                if (active.pop()[1] >= hPrev)
                    hNew = -1;

            if (hNew == -1) hNew = active.reduce(function (res, v) {
                return res > v[1] ? res : v[1];
            }, 0);

            if (hNew !== hPrev) {
                points.push([x, hNew]);
                hPrev = hNew;
            }
        }

    }

    return points;
};