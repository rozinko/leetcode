<?php

/**
 * 191. Number of 1 Bits
 * https://leetcode.com/problems/number-of-1-bits/
 */

class Solution
{
    /**
     * @param Integer $n
     * @return Integer
     */
    function hammingWeight($n)
    {
        $m = 2147483648;
        $ans = 0;
        while ($m) {
            if ($n & $m) $ans++;
            $m >>= 1;
        }
        return $ans;
    }
}