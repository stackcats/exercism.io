//Solution goes in Sources
import Foundation
class Gigasecond {
    let date: Date?
    private var dateFormatter = DateFormatter()
    init?(from str: String) {
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        date = dateFormatter.date(from: str)!.addingTimeInterval(1_000_000_000)
    }
    var description: String {
        return dateFormatter.string(from: date!)
    }
}
