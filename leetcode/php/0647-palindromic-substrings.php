<?php

/**
 * 647. Palindromic Substrings
 * https://leetcode.com/problems/palindromic-substrings/
 */

class Solution
{
    /**
     * @param String $s
     * @return Integer
     */
    function countSubstrings($s)
    {
        $len = strlen($s);
        $ans = $len;

        for ($i = 0; $i < $len - 1; $i++) {
            // check aba, aabaa, ...
            for ($j = 1; $i - $j >= 0 && $i + $j + 1 <= $len; $j++) {
                $str = substr($s, $i - $j, $j * 2 + 1);
                if ($str != strrev($str)) break;
                $ans++;
            }
            // check abba, aabbaa, ...
            for ($j = 0; $i - $j >= 0 && $i + $j + 2 <= $len; $j++) {
                $str = substr($s, $i - $j, $j * 2 + 2);
                if ($str != strrev($str)) break;
                $ans++;
            }
        }

        return $ans;
    }
}