<?php

/**
 * 242. Valid Anagram
 * https://leetcode.com/problems/valid-anagram/
 */

class Solution
{
    /**
     * @param String $s
     * @param String $t
     * @return Boolean
     */
    function isAnagram($s, $t)
    {
        $s = str_split($s);
        $t = str_split($t);
        sort($s);
        sort($t);
        return implode('', $s) === implode('', $t);
    }
}