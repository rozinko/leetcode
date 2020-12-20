<?php

/**
 * 24. Swap Nodes in Pairs
 * https://leetcode.com/problems/swap-nodes-in-pairs/
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
     * @return ListNode
     */
    function swapPairs($head)
    {
        if (!$head || !$head->next) return $head;

        $node = $head->next;
        $head->next = $node->next;
        $node->next = $head;
        $head = $node;

        $head->next->next = $this->swapPairs($head->next->next);
        return $head;
    }
}