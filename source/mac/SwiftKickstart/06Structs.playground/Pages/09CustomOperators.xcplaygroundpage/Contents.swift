//: ### Custom Operators
//: [TOC](00TOC) | [Previous](@previous) | Next
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

prefix operator <~

prefix func <~(vertex: Vertex) -> Vertex {
    vertex.movedHorizontally(by: -1)
}

postfix operator ~>

postfix func ~>(vertex: Vertex) -> Vertex {
    vertex.movedHorizontally(by: 1)
}

infix operator <^>

func <^>(vertexOne: Vertex, vertexTwo: Vertex) -> Double {
    let difference = Vertex(x: vertexOne.x - vertexTwo.x,
                            y: vertexOne.y - vertexTwo.y)
    return difference.magnitude()
}


let point1 = Vertex(x: 3, y: 4)
let point2 = Vertex(x: -3, y: 12)

<~point1
point2~>
point1 <^> point2

//: [TOC](00TOC) | [Previous](@previous) | Next
