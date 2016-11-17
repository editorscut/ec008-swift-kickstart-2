//: ### Methods
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
import Foundation

struct Vertex {
    let x: Double
    let y: Double
    
    func magnitude() -> Double {
        return sqrt(x * x + y * y)
    }
}

let point = Vertex(x: 3, y: 4)
point.magnitude()

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
