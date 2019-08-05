//Solution goes in Sources
class Sieve {
    var primes: [Int]
    init(_ n: Int) {
        var arr = Array(repeating: 1, count: n + 1)
        for i in stride(from: 4, to: n + 1, by: 2) {
            arr[i] = 0
        }

        arr[0] = 0
        arr[1] = 0
        
        var i = 3
        while i <= n {
            if arr[i] == 1 {
                for j in stride(from: i + i, to: n + 1, by: i) {
                    arr[j] = 0
                }
            }
            i += 2
        }
        primes = arr.indices.filter {arr[$0] == 1}
    }
}
