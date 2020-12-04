<?php

/**
 * 22. Generate Parentheses
 * https://leetcode.com/problems/generate-parentheses/
 */

class Solution
{
    /**
     * @param Integer $n
     * @param String $s
     * @return String[]
     */
    function generateParenthesis($n, $s = '()')
    {
        if ($n == 1) return [$s];
        for ($i = 1; $i <= strlen($s); $i++)
            $result = array_merge($result ?? [], $this->generateParenthesis($n - 1, substr($s, 0, $i) . '()' . substr($s, $i)));
        return array_unique($result);
    }
}