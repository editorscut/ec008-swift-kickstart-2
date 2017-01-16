//: ### Sequence and Iterator
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
    
    mutating func next() -> Cardinal? {
        defer {index += 1}
        return Cardinal(rawValue: index)
    }
}

let sequence = CardinalSequence()

var iterator = sequence.makeIterator()

var arrayFromIterator = [Cardinal]()

while let cardinal = iterator.next() {
    arrayFromIterator.append(cardinal)
}

arrayFromIterator

var arrayFromSequence = [Cardinal]()

for element in sequence {
    arrayFromSequence.append(element)
}

arrayFromSequence

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
