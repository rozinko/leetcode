<?php

/**
 * 21. Merge Two Sorted Lists
 * https://leetcode.com/problems/merge-two-sorted-lists/
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
     * @param ListNode $l1
     * @param ListNode $l2
     * @return ListNode
     */
    function mergeTwoLists($l1, $l2)
    {
        $result = $l3 = new ListNode();

        while ($l1 || $l2) {
            if (($l1 && $l2 && $l1->val < $l2->val) || ($l1 && !$l2)) {
                $node = $l1;
                $l1 = $l1->next;
            } else {
                $node = $l2;
                $l2 = $l2->next;
            }
            $node->next = null;
            $l3->next = $node;
            $l3 = $l3->next;
        }

        return $result->next;
    }
}