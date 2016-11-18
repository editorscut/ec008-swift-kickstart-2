//: ### By  Value
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
struct Vertex {
    let x: Double
    let y: Double
}

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}

let point = Vertex(x: 3, y: 4)
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
