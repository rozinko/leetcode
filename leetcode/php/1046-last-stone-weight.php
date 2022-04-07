<?php

/**
 * 1046. Last Stone Weight
 * https://leetcode.com/problems/last-stone-weight/
 */

class Solution
{
    /**
     * @param Integer[] $stones
     * @return Integer
     */
    function lastStoneWeight($stones)
    {
        if (count($stones) == 1) return $stones[0];
        while (true) {
            if ($stones[0] > $stones[1]) {
                $a = 0;
                $b = 1;
            } else {
                $b = 0;
                $a = 1;
            }
            for ($i = 2; $i < count($stones); $i++) {
                if ($stones[$i] > $stones[$a]) {
                    $b = $a;
                    $a = $i;
                } elseif ($stones[$i] > $stones[$b]) {
                    $b = $i;
                }
            }
            if ($stones[$b] == 0) return $stones[$a];
            $stones[$a] -= $stones[$b];
            $stones[$b] = 0;
        }
    }
}