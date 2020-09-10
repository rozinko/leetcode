<?php

/**
 * 12. Integer to Roman
 * https://leetcode.com/problems/integer-to-roman/
 */

class Solution
{
    /**
     * @param Integer $num
     * @return String
     */
    function intToRoman($num)
    {
        $string = '';

        while ($num >= 1000) {
            $string .= 'M';
            $num -= 1000;
        }

        if ($num >= 900) {
            $string .= 'CM';
            $num -= 900;
        }

        if ($num >= 500) {
            $string .= 'D';
            $num -= 500;
        }

        if ($num >= 400) {
            $string .= 'CD';
            $num -= 400;
        }

        while ($num >= 100) {
            $string .= 'C';
            $num -= 100;
        }

        if ($num >= 90) {
            $string .= 'XC';
            $num -= 90;
        }

        if ($num >= 50) {
            $string .= 'L';
            $num -= 50;
        }

        if ($num >= 40) {
            $string .= 'XL';
            $num -= 40;
        }

        while ($num >= 10) {
            $string .= 'X';
            $num -= 10;
        }

        if ($num >= 9) {
            $string .= 'IX';
            $num -= 9;
        }

        if ($num >= 5) {
            $string .= 'V';
            $num -= 5;
        }

        if ($num >= 4) {
            $string .= 'IV';
            $num -= 4;
        }

        while ($num >= 1) {
            $string .= 'I';
            $num -= 1;
        }

        return $string;
    }
}