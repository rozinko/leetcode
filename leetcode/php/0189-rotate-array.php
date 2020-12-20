<?php

/**
 * 189. Rotate Array
 * https://leetcode.com/problems/rotate-array/
 */

class Solution
{
    /**
     * @param Integer[] $nums
     * @param Integer $k
     * @return NULL
     */
    function rotate(&$nums, $k)
    {
        $k %= count($nums);
        while ($k--) array_unshift($nums, array_pop($nums));
    }
}