<?php

/**
 * 23. Merge k Sorted Lists
 * https://leetcode.com/problems/merge-k-sorted-lists/
 *
 * TODO: Runtime: 256 ms, faster than 36.59% of PHP online submissions for Merge k Sorted Lists.
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
     * @param ListNode[] $lists
     * @return ListNode
     */
    function mergeKLists($lists)
    {
        foreach ($lists as $node)
            $this->addValues($node);
        sort($this->values);
        return $this->getNodeList();
    }
}