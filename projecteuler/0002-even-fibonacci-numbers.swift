/**
 * Even Fibonacci numbers
 * https://projecteuler.net/problem=2
 */

func getSumEvenFibonacci() -> Int {
    var prev: [Int] = [1, 2], sum = 0
    while prev[1] <= 4000000 {
        if prev[1] % 2 == 0 {
            sum += prev[1]
        }
        prev = [prev[1], prev[0] + prev[1]]
    }
    return sum
}

print(getSumEvenFibonacci())
