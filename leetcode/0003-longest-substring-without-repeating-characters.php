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
        $maxLength = 0;
        $curLength = 0;
        $sLength = strlen($s);
        $chars = [];
        $substring = '';
        for ($i = 0; $i < $sLength;) {
            // перебор символов с проверкой в символьном массиве
            if (isset($chars[$s[$i]])) {
                // повтор символа
                // заканчиваем текущий набор, начинаем новый с позиции равной повторной букве
                $i = $chars[$s[$i]] + 1;
                if ($curLength > $maxLength) {
                    $maxLength = $curLength;
                }
                $curLength = 0;
                $substring = '';
                $chars = [];
            } else {
                // символ новый, идем дальше и пишем позицию
                $substring .= $s[$i];
                $chars[$s[$i]] = $i;
                $curLength++;
                $i++;
            }
        }

        if ($curLength > $maxLength) {
            return $curLength;
        } else {
            return $maxLength;
        }
    }
}