/**
 * 2559. Count Vowel Strings in Ranges
 * https://leetcode.com/problems/count-vowel-strings-in-ranges/
 **/

class Solution {
    func vowelStrings(_ words: [String], _ queries: [[Int]]) -> [Int] {
        let isVowels: [Bool] = words.map({
            let chars = Array($0).map { String($0) }
            let vowels = ["a","e","i","o","u"]
            if vowels.contains(chars[0]) && vowels.contains(chars[chars.count-1]) {
                return true
            }
            return false
        })

        let vowelCount = isVowels.filter { $0 }.count
        var vowelsBefore: [Int] = [], vowelsAfter: [Int] = []

        var vowelCounter = 0
        for vowel in isVowels {
            vowelsBefore.append(vowelCounter)
            if vowel { vowelCounter += 1 }
            vowelsAfter.append(vowelCount - vowelCounter)
        }

        return queries.map { vowelCount - vowelsBefore[$0[0]] -  vowelsAfter[$0[1]] }
    }
}