<?php

/**
 * 1041. Robot Bounded In Circle
 * https://leetcode.com/problems/robot-bounded-in-circle/
 */

class Solution
{
    /**
     * @param String $instructions
     * @return Boolean
     */
    function isRobotBounded($instructions)
    {
        // x, y, direction (0 - up, 1 - right, 2 - down, 3 - left)
        $now = ['x' => 0, 'y' => 0, 'd' => 0];

        for ($i = 0; $i < 4; $i++) {
            for ($j = 0; $j < strlen($instructions); $j++)
                switch ($instructions[$j]) {
                    case 'L':
                        $now['d'] = $now['d'] > 0 ? $now['d'] - 1 : $now['d'] + 3;
                        break;
                    case 'R':
                        $now['d'] = $now['d'] < 3 ? $now['d'] + 1 : $now['d'] - 3;
                        break;
                    case 'G':
                        switch ($now['d']) {
                            case 0:
                                $now['y']++;
                                break;
                            case 1:
                                $now['x']++;
                                break;
                            case 2:
                                $now['y']--;
                                break;
                            case 3:
                                $now['x']--;
                                break;
                        }
                        break;
                }
            if ($now == ['x' => 0, 'y' => 0, 'd' => 0]) return true;
        }
        return false;
    }
}