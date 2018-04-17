//: ### Sequences and Iterators
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
enum Cardinal: Int {
    case zero
    case one
    case two
    case three
    case four
}

struct CardinalIterator: IteratorProtocol {
    private var index = 0
    
    mutating func next() -> Cardinal? {
        defer {index += 1}
        return Cardinal(rawValue: index)
    }
}

struct CardinalSequence: Sequence {
    func makeIterator() -> CardinalIterator {
        return CardinalIterator()
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

let mappedArrayFromSequence = sequence.map{$0}
mappedArrayFromSequence

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
