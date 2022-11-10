/**
 * 784. Letter Case Permutation
 * https://leetcode.com/problems/letter-case-permutation/
 */

/**
 * @param {string} s
 * @return {string[]}
 */
var letterCasePermutation = function (s) {
  let stack = [s.toLowerCase()];

  for (let i = 0; i < stack[0].length; i++)
    if (stack[0][i] !== stack[0][i].toUpperCase()) {
      let addToStack = [];
      stack.forEach((str) =>
        addToStack.push(
          str.substring(0, i) + str[i].toUpperCase() + str.substring(i + 1)
        )
      );
      stack.push(...addToStack);
    }

  return stack;
};
