<?php

/**
 * 59. Spiral Matrix II
 * https://leetcode.com/problems/spiral-matrix-ii/
 */

class Solution {

    /**
     * @param Integer $n
     * @return Integer[][]
     */
    function generateMatrix($n) {
        $result = [];
        $x = $y = $dy = 0;
        $dx = 1;
        for ($i = 1; $i <= $n*$n; $i++) {
            $result[$y][$x] = $i;
            if (
                isset($result[$y+$dy][$x+$dx]) ||
                $x+$dx < 0 || $x+$dx >= $n || $y+$dy < 0 || $y+$dy >= $n
            ) {
                list($dy, $dx) = [$dx, $dx !== 0 ? 0 : ($dy == 1 ? -1 : 1)];
            }
            $x += $dx;
            $y += $dy;
        }

        return array_map(function($row) {ksort($row); return $row;}, $result);
    }
}