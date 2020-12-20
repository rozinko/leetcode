<?php

/**
 * 5. Longest Palindromic Substring
 * https://leetcode.com/problems/longest-palindromic-substring/
 *
 * TODO: Runtime: 1948 ms, faster than 19.75% of PHP online submissions for Longest Palindromic Substring.
 */

class Solution
{
    /**
     * @param String $s
     * @return String
     */
    function longestPalindrome($s)
    {
        $max = strlen(trim($s));
        for ($len = $max; $len; $len--)
            for ($i = 0; $i <= $max - $len; $i++) {
                $substr = substr($s, $i, $len);
                if ($substr == strrev($substr))
                    return $substr;
            }
        return "";
    }
}