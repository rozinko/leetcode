/**
 * 11. Container With Most Water
 * https://leetcode.com/problems/container-with-most-water/
 */

 class Solution {
     func maxArea(_ height: [Int]) -> Int {
         var maxWater: Int = 0,
             left = 0,
             right = height.count - 1

         while left < right {
             maxWater = max(maxWater, min(height[left], height[right]) * (right - left))
             if height[left] > height[right] {
                 right -= 1
             } else {
                 left += 1
             }
         }

         return maxWater
     }
 }

 class Solution2 {
    func maxArea(_ height: [Int]) -> Int {
        var stack: [(index: Int, height: Int)] = [], ans = 0

        for (i, h) in height.enumerated() {
            if stack.count == 0 || h > (stack.last?.height ?? h) {
                stack.append((index: i, height: h))
            }
            for prev in stack {
                ans = max(ans, min(prev.height, h) * (i - prev.index))
            }
        }

        return ans
    }
}