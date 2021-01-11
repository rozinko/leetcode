<?php

/**
 * 3. Longest Substring Without Repeating Characters
 * https://leetcode.com/problems/longest-substring-without-repeating-characters/
 */

class Solution
{
    /**
     * @param String $s
     * @return Integer
     */
    function lengthOfLongestSubstring($s)
    {
        $len = $left = $right = 0;
        $map = [];

        while ($right < strlen($s)) {
            if (isset($map[$s[$right]])) {
                while ($s[$left] !== $s[$right]) unset($map[$s[$left++]]);
                $left++;
            }
            $map[$s[$right++]] = true;
            $len = max($len, $right - $left);
        }

        return $len;
    }
}