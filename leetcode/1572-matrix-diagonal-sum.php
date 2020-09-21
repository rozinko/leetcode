<?php

/**
 * 1572. Matrix Diagonal Sum
 * https://leetcode.com/problems/matrix-diagonal-sum/
 */

class Solution
{
    /**
     * @param Integer[][] $mat
     * @return Integer
     */
    function diagonalSum($mat)
    {
        $sum = 0;
        $max = count($mat) - 1;
        for ($i = 0; $i <= $max; $i++)
            $sum += $mat[$i][$i] + ($i != $max - $i ? $mat[$i][$max - $i] : 0);
        return $sum;
    }
}