//: ### Mapping Arrays
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

enum Cardinal : Int {
    case zero
    case one
    case two
    case three
    case four
}

struct CardinalIterator : IteratorProtocol {
    private var index = 0
    private(set) var cardinal: Cardinal?
    
    mutating func next() -> Cardinal? {
        cardinal = Cardinal(rawValue: index)
        index += 1
        return cardinal
    }
}

var iterator = CardinalIterator()

var cardinalArray = [Cardinal]()

while let cardinal = iterator.next() {
    cardinalArray.append(cardinal)
}

cardinalArray

iterator.next()
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
