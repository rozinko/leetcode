<?php

/**
 * 35. Search Insert Position
 * https://leetcode.com/problems/search-insert-position/
 */

class Solution
{
    /**
     * @param Integer[] $nums
     * @param Integer $target
     * @return Integer
     */
    function searchInsert($nums, $target)
    {
        for ($i = count($nums); $i; $i--)
            if ($target > $nums[$i - 1])
                return $i;
        return 0;
    }
}