//: ### Non-Mutable Model
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct Model {
    fileprivate let privateArray: [String]
    
    init(_ strings: String...) {
        privateArray = strings
    }
}

extension Model : CustomStringConvertible {
    var description: String {
        return privateArray.description
    }
}

var model = Model("A", "B", "C", "D", "E")
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


