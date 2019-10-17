//: ### willSet didSet
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
import Foundation

struct Vertex {
    private(set) var x: Double {
        willSet {
            count += 1
        }
        didSet {
            if x == 0 {
                x = oldValue
            }
        }
    }
    private(set) var y: Double {
        didSet {
            if y == 0 {
                y = oldValue
            }
        }
    }
    private(set) var count = 0

    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }

    var magnitude: Double {
        get {
            sqrt(x * x + y * y)
        }
        set {
            let multiplier = newValue / magnitude
            x *= multiplier
            y *= multiplier
        }
    }
}
//struct Vertex {
//    private(set) var x, y: Double
//
//    var magnitude: Double {
//        get {
//            return sqrt(x * x + y * y)
//        }
//        set {
//            if newValue != 0 {
//                let multiplier = newValue / magnitude
//                x *= multiplier
//                y *= multiplier
//            }
//        }
//    }
//}

var point = Vertex(x: 3.0, y: 4.0)
point.magnitude = 10.0
point.x
point.y
point.magnitude = 0.0
point.x
point.y

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
