//: ### Polymorphism
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
protocol Movable {
  var location: Vertex {get}
  func movedHorizontally(by deltaX: Int) -> Self
}

func shiftedLeft(movable: some Movable) -> some Movable {
  movable.movedHorizontally(by: -1)
}

struct Vertex {
  let x, y: Int
}

extension Vertex: Movable {
  public var location: Vertex {
    self
  }
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
}

extension Rectangle: Movable {
  public var location: Vertex {
    let centerX = topLeftCorner.x + size.width/2
    let centerY = topLeftCorner.y + size.height/2
    return Vertex(x: centerX, y: centerY)
  }
  func movedHorizontally(by deltaX: Int) -> Rectangle {
    let movedTopLeftCorner  = topLeftCorner.movedHorizontally(by: deltaX)
    return Rectangle(topLeftCorner:movedTopLeftCorner, size: size)
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

let movedVertex = vertex.movedHorizontally(by: 10)
let movedTwiceVertex = movedVertex.movedHorizontally(by: 10)

vertex.location
rectangle.location

let shiftedLeftVertex = shiftedLeft(movable: vertex)
let shiftedLeftRectangle = shiftedLeft(movable: rectangle)

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)



