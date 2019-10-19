import Foundation

struct Vertex {
    let x, y : Double
    
    func magnitude() -> Double {
        sqrt(x * x + y * y)
    }
    
    func movedHorizontally(by deltaX: Double) -> Vertex {
        Vertex(x: x + deltaX, y: y)
    }
}

extension Vertex: CustomStringConvertible {
    var description: String {
        "(\(x), \(y))"
    }
}
