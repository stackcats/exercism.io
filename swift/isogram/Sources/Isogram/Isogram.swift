//Solution goes in Sources
class Isogram {
    static func isIsogram(_ str: String) -> Bool {
        var s: Set<Character> = Set<Character>()
        for ch in str.lowercased() {
            if ch == " " || ch == "-" {
                continue
            }
            
            if s.contains(ch) {
                return false
            }
            
            s.insert(ch)
        }
        return true
    }
}
