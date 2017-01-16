//: ### Subscripts
//: [TOC](TOC) | [Previous](@previous) | Next

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
    subscript(index: Int) -> Cardinal?  {
        return Cardinal(rawValue: index)
    }
}


let sequence = CardinalSequence()

sequence[2]
sequence[3]

for element in sequence {
    print("wooo", element)
}
//: [TOC](TOC) | [Previous](@previous) | Next
