//: ### Generic
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

protocol EnumIterable : RawRepresentable {
    typealias RawValue = Int
}

enum Cardinal : Int, EnumIterable {
    case zero
    case one
    case two
    case three
    case four
}


struct CardinalSequence<T : EnumIterable> : Sequence, IteratorProtocol {
    private var index = 0
    private(set) var cardinal: T?
    
    mutating func next() -> T? {
        cardinal = T(rawValue: index)
        index += 1
        return cardinal
    }
}

let sequence = CardinalSequence<Cardinal>()

for element in sequence {
    print("wooo", element)
}
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
