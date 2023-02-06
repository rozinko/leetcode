/**
 * 1689. Partitioning Into Minimum Number Of Deci-Binary Numbers
 * https://leetcode.com/problems/partitioning-into-minimum-number-of-deci-binary-numbers/
 *
 * https://leetcode.com/problems/partitioning-into-minimum-number-of-deci-binary-numbers/discuss/970417/PHP-JavaScript-One-line-solution
 */

var minPartitions = function (n) {
    return n.split('').reduce((max, val) => max > parseInt(val) ? max : parseInt(val))
};