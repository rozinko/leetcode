<?php

/**
 * 784. Letter Case Permutation
 * https://leetcode.com/problems/letter-case-permutation/
 */

class Solution
{
    /**
     * @param String $S
     * @return String[]
     */
    function letterCasePermutation($S)
    {
        $ans = [''];
        foreach (str_split($S) as $ch) {
            $ch1 = strtolower($ch);
            $ch2 = strtoupper($ch);
            if ($ch1 == $ch2) {
                $ans = array_map(function ($str) use ($ch1) {
                    return $str . $ch1;
                }, $ans);
            } else {
                $ans = array_merge(
                    array_map(function ($str) use ($ch1) {
                        return $str . $ch1;
                    }, $ans),
                    array_map(function ($str) use ($ch2) {
                        return $str . $ch2;
                    }, $ans)
                );
            }
        }
        return $ans;
    }
}