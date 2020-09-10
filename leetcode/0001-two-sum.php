<?php

/**
 * 1. Two Sum
 * https://leetcode.com/problems/two-sum/
 */

class Solution
{
    /**
     * @param Integer[] $nums
     * @param Integer $target
     * @return Integer[]
     */
    function twoSum($nums, $target)
    {
        $length = count($nums);

        for ($i = 0; $i < $length - 1; $i++)
            for ($j = $i + 1; $j < $length; $j++)
                if ($nums[$i] + $nums[$j] == $target)
                    return [$i, $j];
    }
}