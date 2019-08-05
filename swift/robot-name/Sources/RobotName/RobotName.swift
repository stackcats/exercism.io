//Solution goes in Sources
class Robot {
    let alpha = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    let digits = ["0","1","2","3","4","5","6","7","8","9"]
    var names: Set<String> = Set<String>()
    var name = ""
    init() {
        resetName()
    }
    func resetName() {
        var tmp = genName(numOfAlpha: 2, numOfDigit: 3)
        while names.contains(tmp) {
            tmp = genName(numOfAlpha: 2, numOfDigit: 3)
        }
        name = tmp
        names.insert(name)
    }

    private func genName(numOfAlpha: Int, numOfDigit: Int) -> String {
        var tmp = ""
        for _ in 0..<numOfAlpha {
            tmp += alpha.randomElement()!
        }

        for _ in 0..<numOfDigit {
            tmp += digits.randomElement()!
        }

        return tmp
    }
}
