//: ### Custom Operators
//: [TOC](00TOC) | [Previous](@previous) | Next
import Foundation

struct Vertex {
    let x, y : Double
    
    func magnitude() -> Double {
        return sqrt(x * x + y * y)
    }
    
    func movedHorizontally(by deltaX: Double) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
}

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}

//: [TOC](00TOC) | [Previous](@previous) | Next
