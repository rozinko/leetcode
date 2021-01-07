/**
 * 3. Longest Substring Without Repeating Characters
 * https://leetcode.com/problems/longest-substring-without-repeating-characters/
 **/

/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLongestSubstring = function (s) {
    let len = 0, left = 0, right = 0
    let map = {}, mapCount = 0

    while (right < s.length) {
        if (map[s[right]]) {
            while (s[left] !== s[right]) {
                delete map[s[left++]]
                mapCount--
            }
            mapCount--
            left++
        }
        map[s[right++]] = true
        len = Math.max(len, ++mapCount)
    }

    return len
};