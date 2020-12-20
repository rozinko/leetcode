<?php

/**
 * 704. Binary Search
 * https://leetcode.com/problems/binary-search/
 */

class Solution
{
    /**
     * @param Integer[] $nums
     * @param Integer $target
     * @return Integer
     */
    function search($nums, $target)
    {
        if (!count($nums) || $target < $nums[0] || $target > $nums[count($nums) - 1]) return -1;

        if ($target - $nums[0] < $nums[count($nums) - 1] - $target) {
            for ($i = 0; $i < count($nums) && $nums[$i] <= $target; $i++)
                if ($nums[$i] == $target) return $i;
        } else {
            for ($i = count($nums) - 1; $i >= 0 && $nums[$i] >= $target; $i--)
                if ($nums[$i] == $target) return $i;
        }

        return -1;
    }
}