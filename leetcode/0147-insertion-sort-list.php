<?php

/**
 * 147. Insertion Sort List
 * https://leetcode.com/problems/insertion-sort-list/
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
    function insertionSortList($head)
    {
        $cur = $head;
        while ($cur->next) {
            if ($cur->next->val >= $cur->val) {
                // элемент уже на нужном месте, переходим к следующему элементу
                $cur = $cur->next;
            } else {
                // изымаем элемент
                $node = $cur->next;
                $cur->next = $node->next;
                $node->next = null;
                // ищем позицию куда вставить
                $prev = null;
                $pos = $head;
                while ($pos && $pos->val <= $node->val) {
                    // едем дальше пока не найдем местом или закончится список
                    $prev = $pos;
                    $pos = $pos->next;
                }
                // нашли место, вставляем элемент
                $node->next = $pos;
                if ($prev) {
                    $prev->next = $node;
                } else {
                    // если вдруг впереди всех встал
                    $head = $node;
                }
            }
        }
        return $head;
    }
}