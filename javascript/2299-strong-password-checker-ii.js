/**
 * 2299. Strong Password Checker II
 * https://leetcode.com/problems/strong-password-checker-ii/
 */

/**
 * @param {string} password
 * @return {boolean}
 */
var strongPasswordCheckerII = function (password) {
    for (let i = 1; i < password.length; i++)
        if (password[i] === password[i - 1]) return false

    return password.length >= 8 && password.match(/[a-z]/) !== null && password.match(/[A-Z]/) !== null &&
        password.match(/\d/) !== null && password.match(/[-+!@#$%^&*()]/) !== null
};