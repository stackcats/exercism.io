//Solution goes in Sources
class DNA {
    private var nucleotides: [String: Int] = ["A": 0, "T": 0, "C": 0, "G": 0]
    
    init?(strand: String) {
        for c in strand {
            let s = String(c)
            if nucleotides[s] == nil {
                return nil
            }
            nucleotides[s]! += 1
        }
    }
    
    func count(_ symbol: String) -> Int {
        return nucleotides[symbol] ?? 0
    }
    
    func counts() -> [String: Int] {
        return nucleotides
    }
}
