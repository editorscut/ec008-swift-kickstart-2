//: ### Methods
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct Vertex {
  let x: Double
  let y: Double
  
  func movedHorizontally(by deltaX: Double) -> Vertex {
    Vertex(x: x + deltaX, y: y)
  }
}

extension Vertex: CustomStringConvertible {
  var description: String {
    "(\(x), \(y))"
  }
}

var point = Vertex(x: 3, y: 4)
point = point.movedHorizontally(by: 6)
point
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
