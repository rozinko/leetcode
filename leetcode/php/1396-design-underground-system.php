<?php

/**
 * 1396. Design Underground System
 * https://leetcode.com/problems/design-underground-system/
 */

class UndergroundSystem
{

    private $data = [];
    private $times = [];

    /**
     */
    function __construct()
    {
        $this->data = [];
        $this->times = [];
    }

    /**
     * @param Integer $id
     * @param String  $stationName
     * @param Integer $t
     * @return NULL
     */
    function checkIn($id, $stationName, $t)
    {
        $this->data[$id] = [$stationName, $t];
    }

    /**
     * @param Integer $id
     * @param String  $stationName
     * @param Integer $t
     * @return NULL
     */
    function checkOut($id, $stationName, $t)
    {
        $stationFrom = $this->data[$id][0];
        $time = $t - $this->data[$id][1];
        if (!isset($this->times[$stationFrom][$stationName])) {
            $this->times[$stationFrom][$stationName] = [$time];
        } else {
            $this->times[$stationFrom][$stationName][] = $time;
        }
    }

    /**
     * @param String $startStation
     * @param String $endStation
     * @return Float
     */
    function getAverageTime($startStation, $endStation)
    {
        return array_sum($this->times[$startStation][$endStation]) / count($this->times[$startStation][$endStation]);
    }
}

/**
 * Your UndergroundSystem object will be instantiated and called as such:
 * $obj = UndergroundSystem();
 * $obj->checkIn($id, $stationName, $t);
 * $obj->checkOut($id, $stationName, $t);
 * $ret_3 = $obj->getAverageTime($startStation, $endStation);
 */