<?php

/**
 * 1624. Largest Substring Between Two Equal Characters
 * https://leetcode.com/problems/largest-substring-between-two-equal-characters/
 */

class Solution
{
    /**
     * @param String $s
     * @return Integer
     */
    function maxLengthBetweenEqualCharacters($s)
    {
        $map = [];
        $max = -1;

        foreach (str_split($s) as $i => $ch)
            if (!isset($map[$ch])) {
                $map[$ch] = $i;
            } elseif ($i - $map[$ch] - 1 > $max) {
                $max = $i - $map[$ch] - 1;
            }

        return $max;
    }
}