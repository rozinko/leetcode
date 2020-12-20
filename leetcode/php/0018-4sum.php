<?php

/**
 * 18. 4Sum
 * https://leetcode.com/problems/4sum/
 *
 * TODO: Runtime: 4612 ms
 */

class Solution
{

    /**
     * @param Integer[] $nums
     * @param Integer $target
     * @return Integer[][]
     */
    function fourSum($nums, $target)
    {
        if (count($nums) < 4) return [];

        $result = [];

        sort($nums);

        for ($a = 0; $a < count($nums) - 3; $a++)
            for ($b = $a + 1; $b < count($nums) - 2; $b++)
                if ($nums[$a] + $nums[$b] > $target && $nums[$b + 1] >= 0) {
                    break;
                } else {
                    for ($c = $b + 1; $c < count($nums) - 1; $c++)
                        if ($nums[$a] + $nums[$b] + $nums[$c] > $target && $nums[$c + 1] >= 0) {
                            break;
                        } else {
                            for ($d = $c + 1; $d < count($nums); $d++)
                                if ($nums[$a] + $nums[$b] + $nums[$c] + $nums[$d] > $target) {
                                    break;
                                } elseif ($nums[$a] + $nums[$b] + $nums[$c] + $nums[$d] == $target) {
                                    $result[] = $nums[$a] . ',' . $nums[$b] . ',' . $nums[$c] . ',' . $nums[$d];
                                }
                        }
                }

        return array_map(function ($a) {
            return explode(',', $a);
        }, array_unique($result));
    }
}