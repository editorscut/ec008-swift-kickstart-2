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


struct IterableSequence<IterableValues : EnumIterable> : Sequence, IteratorProtocol {
    private var index = 0
    
    mutating func next() -> IterableValues? {
        defer {index += 1}
        return IterableValues(rawValue: index)
    }
}

let sequence = IterableSequence<Cardinal>()

var arrayFromSequence = [Cardinal]()

for element in sequence {
    arrayFromSequence.append(element)
}

arrayFromSequence

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
