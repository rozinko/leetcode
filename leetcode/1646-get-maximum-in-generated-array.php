<?php

/**
 * 1646. Get Maximum in Generated Array
 * https://leetcode.com/problems/get-maximum-in-generated-array/
 *
 * https://leetcode.com/problems/get-maximum-in-generated-array/discuss/931123/PHP-Easy-and-short-O(n)-solution
 */

class Solution
{
    /**
     * @param Integer $n
     * @return Integer
     */
    function getMaximumGenerated($n)
    {
        for ($array = [0], $i = 1; $i <= $n; $i++)
            $array[] = $i % 2 ? ($array[($i - 1) / 2] + ($array[($i + 1) / 2] ?? 1)) : $array[$i / 2];
        return max($array);
    }
}