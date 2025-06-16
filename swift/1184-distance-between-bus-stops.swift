/**
 * 1184. Distance Between Bus Stops
 * https://leetcode.com/problems/distance-between-bus-stops/
 **/

class Solution {
    func distanceBetweenBusStops(_ distance: [Int], _ start: Int, _ destination: Int) -> Int {
        let left = min(start, destination)
        let right = max(start, destination)
        let first = distance.enumerated().filter { $0.offset >= left && $0.offset < right }.map { $0.element }.reduce(0, +)
        let second = distance.reduce(0, +) - first
        return min(first, second)
    }
}