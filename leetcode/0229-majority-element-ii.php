<?php

/**
 * 229. Majority Element II
 * https://leetcode.com/problems/majority-element-ii/
 */

class Solution
{
    /**
     * @param Integer[] $nums
     * @return Integer[]
     */
    function majorityElement($nums)
    {
        sort($nums);
        $result = [];
        for ($i = 0, $val = false, $count = 0, $length = count($nums); $i < $length; $i++) {
            if ($nums[$i] != $val) {
                if ($count > $length / 3) $result[] = $val;
                $count = 0;
            }
            $val = $nums[$i];
            $count++;
            if ($count > $length / 3 && $i == $length - 1) $result[] = $val;
        }
        return $result;
    }
}