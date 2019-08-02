//Solution goes in Sources
class Triangle {
    let kind: String
    init(_ a: Double, _ b: Double, _ c: Double) {
        if a <= 0 || b <= 0 || c <= 0 {
            kind = "ErrorKind"
            return
        }
        
        if a + b < c || a + c < b || b + c < a {
            kind = "ErrorKind"
            return
        }
        
        if a == b && a == c {
            kind = "Equilateral"
            return
        }

        if a == b || a == c || b == c {
            kind = "Isosceles"
            return
        }

        kind = "Scalene"
    }
}
