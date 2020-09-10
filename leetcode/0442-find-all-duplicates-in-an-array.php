<?php

/**
 * 442. Find All Duplicates in an Array
 * https://leetcode.com/problems/find-all-duplicates-in-an-array/
 */

class Solution
{
    /**
     * @param Integer[] $nums
     * @return Integer[]
     */
    function findDuplicates($nums)
    {
        $numsArray = [];
        $result = [];

        foreach ($nums as $num) {
            if (!isset($numsArray[$num])) {
                $numsArray[$num] = 1;
            } else {
                $numsArray[$num]++;
            }
        }

        foreach ($numsArray as $number => $count) {
            if ($count >= 2) {
                $result[] = $number;
            }
        }

        return $result;
    }
}