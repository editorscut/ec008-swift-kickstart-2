//: ### Create Protocols
//: [TOC](00TOC) | Previous | [Next](@next)
struct Vertex {
  let x, y: Int
  
  func movedHorizontally(by deltaX: Int) -> Vertex {
    Vertex(x: x + deltaX, y: y)
  }
}

struct Size {
  let width, height: Int
}

struct Rectangle {
  let topLeftCorner: Vertex
  let size: Size
  
  func movedHorizontally(by deltaX: Int) -> Rectangle {
    let movedTopLeftCorner = topLeftCorner.movedHorizontally(by: deltaX)
    return Rectangle(topLeftCorner: movedTopLeftCorner, size: size)
  }
}
//: [TOC](00TOC) | Previous | [Next](@next)
