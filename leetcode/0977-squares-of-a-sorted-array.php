<?php

/**
 * 977. Squares of a Sorted Array
 * https://leetcode.com/problems/squares-of-a-sorted-array/
 */

class Solution
{
    /**
     * @param Integer[] $nums
     * @return Integer[]
     */
    function sortedSquares($nums)
    {
        $nums = array_map(function ($v) {
            return $v * $v;
        }, $nums);
        sort($nums);
        return $nums;
    }
}