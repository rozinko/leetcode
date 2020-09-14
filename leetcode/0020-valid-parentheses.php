<?php

/**
 * 20. Valid Parentheses
 * https://leetcode.com/problems/valid-parentheses/
 */

class Solution
{
    /**
     * @param String $s
     * @return Boolean
     */
    function isValid($s)
    {
        $a = '';
        for ($i = 0; $i < strlen($s); $i++) {
            switch ($s[$i]) {
                case '(':
                case '{':
                case '[':
                    $a .= $s[$i];
                    break;
                case ')':
                    if (substr($a, -1) != '(') return false;
                    $a = substr($a, 0, -1);
                    break;
                case '}':
                    if (substr($a, -1) != '{') return false;
                    $a = substr($a, 0, -1);
                    break;
                case ']':
                    if (substr($a, -1) != '[') return false;
                    $a = substr($a, 0, -1);
                    break;
            }
        }
        if ($a != '') return false;
        return true;
    }
}