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

    private $values = [];

    function addValues($node)
    {
        if ($node->val !== null) $this->values[] = $node->val;
        if ($node->next !== null) $this->addValues($node->next);
    }

    function getNodeList()
    {
        if (empty($this->values)) return null;
        return new ListNode(array_shift($this->values), $this->getNodeList());
    }

    /**
     * @param ListNode $l1
     * @param ListNode $l2
     * @return ListNode
     */
    function mergeTwoLists($l1, $l2)
    {
        $this->addValues($l1);
        $this->addValues($l2);
        sort($this->values);
        return $this->getNodeList();
    }
}