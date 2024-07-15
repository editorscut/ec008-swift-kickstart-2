//: ### Custom Operators
//: [TOC](00TOC) | [Previous](@previous) | Next

struct Vertex {
  let x, y : Double
  
  func magnitude() -> Double {
    (x * x + y * y).squareRoot()
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

//: [TOC](00TOC) | [Previous](@previous) | Next
