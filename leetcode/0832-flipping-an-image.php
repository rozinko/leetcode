<?php

/**
 * 832. Flipping an Image
 * https://leetcode.com/problems/flipping-an-image/
 *
 * https://leetcode.com/problems/flipping-an-image/discuss/930590/PHP-Easy-and-short-solution
 */

class Solution
{
    /**
     * @param Integer[][] $A
     * @return Integer[][]
     */
    function flipAndInvertImage($A)
    {
        for ($i = 0; $i < count($A); $i++)
            for ($j = 0; $j <= ceil(count($A[$i]) / 2 - 1); $j++)
                list($A[$i][$j], $A[$i][count($A[$i]) - $j - 1]) = [1 - $A[$i][count($A[$i]) - $j - 1], 1 - $A[$i][$j]];
        return $A;
    }
}