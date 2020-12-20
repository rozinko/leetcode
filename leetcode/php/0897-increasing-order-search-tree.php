<?php

/**
 * 897. Increasing Order Search Tree
 * https://leetcode.com/problems/increasing-order-search-tree/
 */

/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     public $val = null;
 *     public $left = null;
 *     public $right = null;
 *     function __construct($val = 0, $left = null, $right = null) {
 *         $this->val = $val;
 *         $this->left = $left;
 *         $this->right = $right;
 *     }
 * }
 */
class Solution
{
    /**
     * @param TreeNode $root
     * @return TreeNode
     */
    function increasingBST($root)
    {
        $current = $root;
        $nodeStack = [];
        while ($current) {
            if ($current->left && !$current->right) {
                $current->right = $current->left;
                $current->left = null;
            }
            if ($current->left) {
                $nodeStack[] = $current->left;
                $current->left = null;
            }
            if (!$current->right && !empty($nodeStack)) {
                $current->right = array_pop($nodeStack);
            }
            $current = $current->right;
        }

        $flag = true;
        while ($flag) {
            $flag = false;
            $prev = null;
            $current = $root;
            while ($current && $current->right) {
                if ($current->val > $current->right->val) {
                    $flag = true;
                    $node = $current->right;
                    $current->right = $current->right->right;
                    $node->right = $current;
                    if ($prev) {
                        $prev->right = $node;
                    } else {
                        $root = $node;
                    }
                }
                $prev = $current;
                $current = $current->right;
            }
        }

        return $root;
    }
}