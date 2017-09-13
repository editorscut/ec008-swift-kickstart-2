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

var point = Vertex(x: 3.0, y: 4.0)
