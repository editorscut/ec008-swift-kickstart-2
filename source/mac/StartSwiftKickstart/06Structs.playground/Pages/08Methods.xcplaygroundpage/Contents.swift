//: ### Methods
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
import Foundation

struct Vertex {
    let x: Double
    let y: Double
}

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
