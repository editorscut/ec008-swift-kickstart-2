//: ### willSet() didSet()
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
import Foundation

struct Vertex {
    private(set) var x: Double
    private(set) var y: Double
    
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
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
