/**
 * 4. Median of Two Sorted Arrays
 * https://leetcode.com/problems/median-of-two-sorted-arrays/
 **/

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var nums: [Int] = []
        var p1 = 0, p2 = 0

        while p1 < nums1.count || p2 < nums2.count {
            if p1 >= nums1.count {
                nums.append(nums2[p2])
                p2 += 1
            } else if p2 >= nums2.count {
                nums.append(nums1[p1])
                p1 += 1
            } else {
                if nums1[p1] < nums2[p2] {
                    nums.append(nums1[p1])
                    p1 += 1
                } else {
                    nums.append(nums2[p2])
                    p2 += 1
                }
            }
        }

        if nums.count % 2 == 0 {
            return Double(nums[nums.count/2-1] + nums[nums.count/2]) / 2
        }

        return Double(nums[(nums.count-1)/2])
    }
}