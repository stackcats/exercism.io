//Solution goes in Sources
import Foundation

class Clock: CustomStringConvertible, Equatable {
    var m = 0
    var h = 0
    
    var description: String {
        return String(format: "%02d:%02d", h, m)
    }

    init(hours: Int, minutes: Int = 0) {
        m = hours * 60 + minutes
        
        while m < 0 {
            m += 60
            h -= 1
        }

        h += m / 60
        
        while h < 0 {
            h += 24
        }

        h %= 24
        
        m %= 60
    }

    func add(minutes: Int) -> Clock {
        return Clock(hours: h, minutes: m + minutes)
    }

    func subtract(minutes: Int) -> Clock {
        return Clock(hours: h, minutes: m - minutes)
    }

    static func == (lhs: Clock, rhs: Clock) -> Bool {
        return lhs.h == rhs.h && lhs.m == rhs.m
    }
}
