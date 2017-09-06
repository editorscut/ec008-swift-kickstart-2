//: ### Computed Properties
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
import Foundation

struct Vertex {
    private(set) var x, y: Double
    var magnitude: Double {
        get {
            return sqrt(x * x + y * y)
        }
        set {
            let multiplier = newValue / magnitude
            x *= multiplier
            y *= multiplier
        }
    }
}

var point = Vertex(x: 3.0, y: 4.0)
point.magnitude
point.magnitude = 10
point.magnitude
point.x
point.y
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)



