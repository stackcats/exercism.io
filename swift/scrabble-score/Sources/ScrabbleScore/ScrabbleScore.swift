//Solution goes in Sources
class Scrabble {
    private static let values: [String: Int] = [
      "A": 1, "E": 1, "I": 1, "O": 1, "U": 1, "L": 1, "N": 1,
      "R": 1, "S": 1, "T": 1,
      "D": 2, "G": 2,
      "B": 3, "C": 3, "M": 3, "P": 3,
      "F": 4, "H": 4, "V": 4, "W": 4, "Y": 4,
      "K": 5,
      "J": 8, "X": 8,
      "Q": 10, "Z": 10
    ]

    var score = 0
    init(_ str: String?) {
        guard let str = str else {
            return
        }
        score = Scrabble.score(str)
    }

    static func score(_ str: String) -> Int {
        var s = 0
        for c in str {
            s += values[c.uppercased()] ?? 0
        }
        return s
    }
}
