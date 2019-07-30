//Solution goes in Sources
extension Array {
    func accumulate<T>(_ fn: (Element) -> T) -> [T] {
        var ans = [T]()
        for each in self {
            ans.append(fn(each))
        }
        return ans
    }
}
