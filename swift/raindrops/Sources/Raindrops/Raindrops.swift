//Solution goes in Sources
class Raindrops {
    let sounds: String
    
    init(_ n: Int) {
        var s = ""
        if n % 3 == 0 {
            s = "\(s)Pling"
        }
        if n % 5 == 0 {
            s = "\(s)Plang"
        }
        if n % 7 == 0 {
            s = "\(s)Plong"
        }
        if s == "" {
            sounds = "\(n)"
        } else {
            sounds = s
        }
    }
}
