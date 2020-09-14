<?php

/**
 * 198. House Robber
 * https://leetcode.com/problems/house-robber/
 */

class Solution
{
    /**
     * @param Integer[] $nums
     * @return Integer
     */
    function rob($nums)
    {
        $sums = [];
        for ($i = 0; $i < count($nums); $i++) {
            $thisAndPrevTwo = $nums[$i] + $sums[$i - 2] ?? 0;
            $prev = $sums[$i - 1] ?? 0;
            $sums[] = $thisAndPrevTwo > $prev ? $thisAndPrevTwo : $prev;
        }
        return $sums[count($sums) - 1] ?? 0;
    }
}