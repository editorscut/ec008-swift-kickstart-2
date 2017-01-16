//: ### Combined
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

enum Cardinal : Int {
    case zero
    case one
    case two
    case three
    case four
}


struct CardinalSequence : Sequence, IteratorProtocol {
    private var index = 0
    private(set) var cardinal: Cardinal?
    
    mutating func next() -> Cardinal? {
        cardinal = Cardinal(rawValue: index)
        index += 1
        return cardinal
    }
}


let sequence = CardinalSequence()

for element in sequence {
    print("wooo", element)
}
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
