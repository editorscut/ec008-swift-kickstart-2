//: ### Subscripts
//: [TOC](TOC) | [Previous](@previous) | Next

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
    subscript(index: Int) -> IterableValues?  {
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

sequence[2]
sequence[3]
sequence[30]
sequence[-30]

// arrayFromSequence[30]
// arrayFromSequence[-30]

//: [TOC](TOC) | [Previous](@previous) | Next
