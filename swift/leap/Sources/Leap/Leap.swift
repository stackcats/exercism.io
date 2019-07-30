//Solution goes in Sources
class Year {
    let isLeapYear: Bool
    init(calendarYear: Int) {
        isLeapYear = (calendarYear % 4 == 0 && calendarYear % 100 != 0) || calendarYear % 400 == 0
    }
}
