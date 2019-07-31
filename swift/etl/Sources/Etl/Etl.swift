//Solution goes in Sources
class ETL {
    static func transform(_ old: [Int: [String]]) -> [String: Int] {
        var res = [String: Int]()
        for (k, v) in old {
            for a in v {
                res[a.lowercased()] = k
            }
        }
        return res
    }
}
