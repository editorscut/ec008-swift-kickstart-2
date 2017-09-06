//: ### Methods
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
import Foundation

//struct Vertex {
//    var x: Double
//    let y: Double
//
//    func magnitude() -> Double {
//        return sqrt(x * x + y * y)
//    }
//
//    mutating func moveHorizontally(by deltaX: Double) {
//        x += deltaX
//    }
//}
//
//extension Vertex: CustomStringConvertible {
//    var description: String {
//        return "(\(x), \(y))"
//    }
//}
//
//var point = Vertex(x: 3, y: 4)
//point.moveHorizontally(by: 3)
//point
struct Vertex {
    let x: Double
    let y: Double
    
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

let point = Vertex(x: 3, y: 4)
let movedPoint = point.movedHorizontally(by: 3)
point
movedPoint
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
