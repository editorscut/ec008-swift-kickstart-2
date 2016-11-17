//: ### By  Value
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
struct Vertex {
    var x: Double
    let y: Double
}

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}

var pointOne = Vertex(x: 3, y: 4)
var pointTwo = pointOne
pointOne.x = 7
pointOne
pointTwo
pointTwo.x = 9
pointOne
pointTwo

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
