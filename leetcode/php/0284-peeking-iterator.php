<?php

/**
 * 284. Peeking Iterator
 * https://leetcode.com/problems/peeking-iterator/
 */

// PHP ArrayIterator reference:
// https://www.php.net/arrayiterator

class PeekingIterator
{

    private $arr = [];
    private $pos = 0;

    /**
     * @param ArrayIterator $arr
     */
    function __construct($arr)
    {
        $this->arr = $arr;
        $this->pos = 0;
    }

    /**
     * @return Integer
     */
    function next()
    {
        return $this->arr[$this->pos++];
    }

    /**
     * @return Integer
     */
    function peek()
    {
        return $this->arr[$this->pos];
    }

    /**
     * @return Boolean
     */
    function hasNext()
    {
        return isset($this->arr[$this->pos]);
    }
}

/**
 * Your PeekingIterator object will be instantiated and called as such:
 * $obj = PeekingIterator($arr);
 * $ret_1 = $obj->next();
 * $ret_2 = $obj->peek();
 * $ret_3 = $obj->hasNext();
 */