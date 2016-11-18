//: ### Equatable
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
struct Vertex {
    let x, y: Double
}

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
