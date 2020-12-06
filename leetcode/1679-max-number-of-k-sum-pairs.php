<?php

/**
 * 1679. Max Number of K-Sum Pairs
 * https://leetcode.com/problems/max-number-of-k-sum-pairs/
 *
 * https://leetcode.com/problems/max-number-of-k-sum-pairs/discuss/961869/PHP-JavaScript-O(n)-solution-100-faster
 */

class Solution
{
    /**
     * @param Integer[] $nums
     * @param Integer $k
     * @return Integer
     */
    function maxOperations($nums, $k)
    {
        $map = [];
        $pairs = 0;
        foreach ($nums as $num)
            if (isset($map[$k - $num]) && $map[$k - $num]) {
                $map[$k - $num]--;
                $pairs++;
            } else {
                $map[$num] = ($map[$num] ?? 0) + 1;
            }
        return $pairs;
    }
}