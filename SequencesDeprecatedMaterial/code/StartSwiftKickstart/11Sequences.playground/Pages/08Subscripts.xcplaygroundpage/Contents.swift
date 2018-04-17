//: ### Subscripts
//: [TOC](00TOC) | [Previous](@previous) | Next
protocol EnumIterable: RawRepresentable {
    init?(rawValue: Int)
}

enum Cardinal: Int, EnumIterable {
    case zero
    case one
    case two
    case three
    case four
}


struct IterableSequence<IterableValues: EnumIterable>: Sequence, IteratorProtocol {
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

let mappedArrayFromSequence = sequence.map{$0}
mappedArrayFromSequence

//: [TOC](00TOC) | [Previous](@previous) | Next
