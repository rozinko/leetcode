/**
 * 2948. Make Lexicographically Smallest Array by Swapping Elements
 * https://leetcode.com/problems/make-lexicographically-smallest-array-by-swapping-elements/
 **/

class Solution {
    func lexicographicallySmallestArray(_ nums: [Int], _ limit: Int) -> [Int] {
        let tuples = nums.enumerated().sorted { $0.element < $1.element }

        var groups: [(v: [Int], i: [Int])] = [(v: [ tuples[0].element ], i: [ tuples[0].offset ])]

        var ans = [Int](repeating: 0, count: nums.count)

        for i in 1 ..< tuples.count {
            if tuples[i].element - groups.last!.v.last! > limit {
                groups.append( (v: [], i: []) )
            }
            groups[groups.count-1].v.append(tuples[i].element)
            groups[groups.count-1].i.append(tuples[i].offset)
        }

        for i in 0 ..< groups.count {
            groups[i].v.sort()
            groups[i].i.sort()

            for j in 0 ..< groups[i].v.count {
                let val = groups[i].v[j]
                let ind = groups[i].i[j]
                ans[ind] = val
            }
        }

        return ans
    }
}