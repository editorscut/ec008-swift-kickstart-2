//: ### Conforming to a Protocol
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
protocol Movable {
  func movedHorizontally(by deltaX: Int) -> Movable
}

struct Vertex {
  let x, y: Int
  
  func movedHorizontally(by deltaX: Int) -> Vertex {
    Vertex(x: x + deltaX, y: y)
  }
}

extension Vertex: CustomStringConvertible {
  var description: String {
    "(\(x), \(y))"
  }
}

struct Size {
  let width, height: Int
}

extension Size: CustomStringConvertible {
  var description: String {
    "\(width) by \(height)"
  }
}

struct Rectangle {
  let topLeftCorner: Vertex
  let size: Size
  
  func movedHorizontally(by deltaX: Int) -> Rectangle {
    let movedTopLeftCorner = topLeftCorner.movedHorizontally(by: deltaX)
    return Rectangle(topLeftCorner: movedTopLeftCorner, size: size)
  }
}

extension Rectangle: CustomStringConvertible {
  var description: String {
    "\(size) at \(topLeftCorner)"
  }
}

let vertex = Vertex(x: 3, y: 4)
let size = Size(width: 100, height: 50)
let rectangle = Rectangle(topLeftCorner: vertex, size: size)

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)


