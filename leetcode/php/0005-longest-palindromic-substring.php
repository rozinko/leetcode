<?php

/**
 * 5. Longest Palindromic Substring
 * https://leetcode.com/problems/longest-palindromic-substring/
 */

class Solution
{
    /**
     * @param String $s
     * @return String
     */
    function longestPalindrome($s)
    {
        $ans = "";
        $anslen = 0;
        $len = strlen($s);

        for ($i = 0; $i < $len; $i++) {
            // substr with len = 1, 3, 5, ...
            $j = max(0, ceil($anslen / 2)); // set start j, start len must be greater that ans len
            $maxj = min($i, $len - $i);
            while ($j <= $maxj) {
                $str = substr($s, $i - $j, 1 + 2 * $j);
                if ($str != strrev($str)) break;
                if (strlen($str) > $anslen) {
                    $ans = $str;
                    $anslen = strlen($str);
                }
                $j++;
            }
            // substr with len = 2, 4, 6, ...
            $j = max(0, ceil(($anslen - 1) / 2)); // set start j, start len must be greater that ans len
            $maxj = min($i, $len - $i - 1);
            while ($j <= $maxj) {
                $str = substr($s, $i - $j, 2 + 2 * $j);
                if ($str != strrev($str)) break;
                if (strlen($str) > $anslen) {
                    $ans = $str;
                    $anslen = strlen($str);
                }
                $j++;
            }
        }

        return $ans;
    }
}