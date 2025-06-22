/**
 * 2942. Find Words Containing Character
 * https://leetcode.com/problems/find-words-containing-character/
 **/

class Solution {
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        return words.enumerated().compactMap { Array($0.element).contains(x) ? $0.offset : nil }
    }
}