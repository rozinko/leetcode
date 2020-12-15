/**
 * Multiples of 3 and 5
 * https://projecteuler.net/problem=1
 */

func getSum() -> Int {
    var sum = 0
    for i in 3..<1000 where i % 3 == 0 || i % 5 == 0 {
        sum += i
    }
    return sum
}

func getSum2() -> Int {
    return [Int](3..<1000).filter{$0 % 3 == 0 || $0 % 5 == 0}.reduce(0, +)
}

print(getSum())
print(getSum2())