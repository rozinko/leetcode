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
        $map = [];

        foreach ($nums as $i => $num)
            if (!isset($map[$target - $num])) {
                $map[$num] = $i;
            } else {
                return [$map[$target - $num], $i];
            }
    }
}