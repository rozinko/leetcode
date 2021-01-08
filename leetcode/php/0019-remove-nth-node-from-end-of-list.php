<?php

/**
 * 19. Remove Nth Node From End of List
 * https://leetcode.com/problems/remove-nth-node-from-end-of-list/
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
    /**
     * @param ListNode $head
     * @param Integer  $n
     * @return ListNode
     */
    function removeNthFromEnd($head, $n)
    {
        if (!$head->next) return null;
        $p1 = $p2 = $head;

        while ($p2->next) {
            $p2 = $p2->next;
            $p1 = $n-- > 0 ? $p1 : $p1->next;
        }

        if ($n > 0) {
            $head = $head->next;
        } else {
            $p1->next = $p1->next->next;
        }

        return $head;
    }
}