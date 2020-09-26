<?php

/**
 * 495. Teemo Attacking
 * https://leetcode.com/problems/teemo-attacking/
 */

class Solution
{
    /**
     * @param Integer[] $timeSeries
     * @param Integer $duration
     * @return Integer
     */
    function findPoisonedDuration($timeSeries, $duration)
    {
        $result = 0;
        for ($i = 0; $i < count($timeSeries); $i++)
            $result += min([($timeSeries[$i + 1] ?? $timeSeries[$i] + $duration) - $timeSeries[$i], $duration]);
        return $result;
    }
}