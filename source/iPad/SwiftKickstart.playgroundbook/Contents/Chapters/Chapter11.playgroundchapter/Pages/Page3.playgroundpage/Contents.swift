protocol EnumIterable: RawRepresentable where RawValue == Int {
    func next() -> Self?
    static var first: Self? {get}
}

extension EnumIterable {
    func next() -> Self? {
        return Self(rawValue: rawValue + 1)
    }
    static var first: Self? {
        return Self(rawValue: 0)
    }
}

enum Cardinal: Int, EnumIterable {
    case zero
    case one
    case two
    case three
    case four
}

var cardinalArray = [Cardinal]()

var currentElement = Cardinal.first

while let current = currentElement {
    cardinalArray.append(current)
    currentElement = currentElement?.next()
}

cardinalArray

