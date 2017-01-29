//: ### while let
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

protocol EnumIterable : RawRepresentable {
    typealias RawValue = Int
    func next() -> Self?
}

extension EnumIterable {
    func next() -> Self? {
        return Self(rawValue: rawValue + 1)
    }
}

enum Cardinal : Int, EnumIterable {
    case zero
    case one
    case two
    case three
    case four
}

let number = Cardinal.three
let nextNumber = number.next()
nextNumber?.next()


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
