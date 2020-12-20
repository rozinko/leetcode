<?php

/**
 * 15. 3Sum
 * https://leetcode.com/problems/3sum/
 */

class Solution
{
    /**
     * @param Integer[] $nums
     * @return Integer[][]
     */
    function threeSum($nums)
    {
        if (count($nums) < 3) return [];

        $results = [];

        $positive = array_values(array_filter($nums, function ($v) {
            return $v > 0;
        }));
        $negative = array_values(array_filter($nums, function ($v) {
            return $v < 0;
        }));
        $zeros = count(array_keys($nums, 0));

        $keys = array_flip($nums);

        sort($positive);
        sort($negative);

        // two positive and negative
        for ($i = 0; $i < count($positive) - 1; $i++)
            for ($j = $i + 1; $j < count($positive); $j++)
                if (isset($keys[($positive[$i] + $positive[$j]) * -1]))
                    $results[] = [($positive[$i] + $positive[$j]) * -1, $positive[$i], $positive[$j]];

        // two negative and positive
        for ($i = 0; $i < count($negative) - 1; $i++)
            for ($j = $i + 1; $j < count($negative); $j++)
                if (isset($keys[($negative[$i] + $negative[$j]) * -1]))
                    $results[] = [$negative[$i], $negative[$j], ($negative[$i] + $negative[$j]) * -1];

        // negative, positive and zero
        if ($zeros)
            for ($i = 0; $i < count($negative); $i++)
                if (isset($keys[$negative[$i] * -1]))
                    $results[] = [$negative[$i], $negative[$i] * -1, 0];

        // three zeros
        if ($zeros >= 3)
            $results[] = [0, 0, 0];

        return array_unique($results, SORT_REGULAR);
    }
}