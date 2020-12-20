<?php

/**
 * 13. Roman to Integer
 * https://leetcode.com/problems/roman-to-integer/
 */

class Solution
{
    /**
     * @param String $s
     * @return Integer
     */
    function romanToInt($s)
    {
        $sum = 0;

        $prices2x = [
            'IV' => 4,
            'IX' => 9,
            'XL' => 40,
            'XC' => 90,
            'CD' => 400,
            'CM' => 900,
        ];

        $prices = [
            'I' => 1,
            'V' => 5,
            'X' => 10,
            'L' => 50,
            'C' => 100,
            'D' => 500,
            'M' => 1000,
        ];

        while ($s != '') {
            if (strlen($s) >= 2) {
                foreach ($prices2x as $roman => $value) {
                    if ($s[0] . $s[1] == $roman) {
                        $s = substr($s, 2);
                        $sum += $value;
                        continue 2;
                    }
                }
            }
            foreach ($prices as $roman => $value) {
                if ($s[0] == $roman) {
                    $s = substr($s, 1);
                    $sum += $value;
                    continue 2;
                }
            }
        }

        return $sum;
    }
}