//: ### Value Types
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
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
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
