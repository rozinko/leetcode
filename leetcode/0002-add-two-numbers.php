<?php

/**
 * 2. Add Two Numbers
 * https://leetcode.com/problems/add-two-numbers/
 */

/**
 * Definition for a singly-linked list.
 * class ListNode {
 *     public $val = 0;
 *     public $next = null;
 *     function __construct($val = 0, $next = null) {
 *         $this->val = $val;
 *         $this->next = $next;
 *     }
 * }
 */
class Solution
{
    function nodeToRevString($node)
    {
        return $node->val . ($node->next !== null ? $this->nodeToRevString($node->next) : '');
    }

    function compareRevStrings($s1, $s2)
    {
        $maxLength = max([strlen($s1), strlen($s2)]);

        $s3 = '';
        $val_next = 0;

        for ($i = 0; $i <= $maxLength; $i++) {
            $val = (int)($s1[$i] ?? 0) + (int)($s2[$i] ?? 0) + $val_next;
            $val_next = 0;
            if ($val >= 10) {
                $val -= 10;
                $val_next = 1;
            }
            $s3 .= $i < $maxLength || $val != 0 ? $val : '';
        }
        return $s3;
    }

    function revStringToNode($s)
    {
        return new ListNode($s[0], isset($s[1]) ? $this->revStringToNode(substr($s, 1)) : null);
    }

    /**
     * @param ListNode $l1
     * @param ListNode $l2
     * @return ListNode
     */
    function addTwoNumbers($l1, $l2)
    {
        $s1 = $this->nodeToRevString($l1);
        $s2 = $this->nodeToRevString($l2);
        $s3 = $this->compareRevStrings($s1, $s2);
        echo $s3;
        return $this->revStringToNode($s3);
    }
}