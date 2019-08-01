//Solution goes in Sources
class ListOps {
    static func append<T>(_ xs: [T], _ ys: [T]) -> [T] {
        var zs = [T]()
        for x in xs {
            zs.append(x)
        }
        for y in ys {
            zs.append(y)
        }
        return zs
    }

    static func concat<T>(_ xss: [T]...) -> [T] {
        var ys = [T]()
        for xs in xss {
            ys = append(ys, xs)
        }
        return ys
    }

    static func filter<T>(_ xs: [T], _ fn: (T) -> Bool) -> [T] {
        var ys = [T]()
        for x in xs {
            if fn(x) {
                ys.append(x)
            }
        }
        return ys
    }

    static func length<T>(_ xs: [T]) -> Int {
        var len = 0;
        for _ in xs {
            len += 1
        }
        return len
    }

    static func map<T>(_ xs: [T], _ fn: (T) -> T) -> [T] {
        var ys = [T]()
        for x in xs {
            ys.append(fn(x))
        }
        return ys
    }

    static func foldLeft<T>(_ xs: [T], accumulated: T, combine: (T, T) -> T) -> T {
        var acc = accumulated
        for x in xs {
            acc = combine(acc, x)
        }
        return acc
    }

    static func foldRight<T>(_ xs: [T], accumulated: T, combine: (T, T) -> T) -> T {
        var acc = accumulated
        let ys = reverse(xs)
        for y in ys {
            acc = combine(y, acc)
        }
        return acc
    }

    static func reverse<T>(_ xs: [T]) -> [T] {
        var ys = [T]()
        for x in xs {
            ys = append([x], ys)
        }
        return ys
    }
}
