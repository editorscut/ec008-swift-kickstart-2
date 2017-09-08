//: ### Self
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
protocol Movable {
    func movedHorizontally(by deltaX: Int) -> Self
}

struct Vertex {
    let x, y: Int
}

extension Vertex: Movable {
    func movedHorizontally(by deltaX: Int) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
}

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}

struct Size {
    let width, height: Int
}

extension Size: CustomStringConvertible {
    var description: String {
        return "\(width) by \(height)"
    }
}

struct Rectangle {
    let topLeftCorner: Vertex
    let size: Size
}

extension Rectangle: Movable {
    func movedHorizontally(by deltaX: Int) -> Rectangle {
        let movedTopLeftCorner
            = topLeftCorner.movedHorizontally(by: deltaX)
        return Rectangle(topLeftCorner:movedTopLeftCorner,
                         size: size)
    }
}

extension Rectangle: CustomStringConvertible {
    var description: String {
        return "\(size) at \(topLeftCorner)"
    }
}

let vertex = Vertex(x: 3, y: 4)
let size = Size(width: 100, height: 50)
let rectangle = Rectangle(topLeftCorner: vertex, size: size)

let movedVertex = vertex.movedHorizontally(by: 10)
let movedTwiceVertex = movedVertex.movedHorizontally(by: 10)

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
