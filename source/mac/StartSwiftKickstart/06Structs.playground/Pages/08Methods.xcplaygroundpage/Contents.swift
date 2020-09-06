//: ### Methods
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct Vertex {
    let x: Double
    let y: Double
}

extension Vertex: CustomStringConvertible {
    var description: String {
        "(\(x), \(y))"
    }
}
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
