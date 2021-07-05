//: ### Methods
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
//struct Vertex {
//  let x: Double
//  let y: Double
//
//  func magnitude() -> Double {
//    (x*x + y*y).squareRoot()
//  }
//}

//struct Vertex {
//  private(set) var x: Double
//  let y: Double
//
//  mutating func moveHorizontally(by deltaX: Double) {
//    x += deltaX
//  }
//}

//struct Vertex {
//  private(set) var x: Double
//  let y: Double
//
//  mutating func moveHorizontally(by deltaX: Double) {
//    self = Vertex(x: x + deltaX,
//                  y: y)
//  }
//}

//struct Vertex {
//  private(set) var x: Double
//  let y: Double
//
//  mutating func moveHorizontally(by deltaX: Double) {
//    self = Vertex(x: x + deltaX,
//                  y: 0)
//  }
//}

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

//let point = Vertex(x: 3, y: 4)
//let movedPoint = point.movedHorizontally(by: 6)
//point
//point.magnitude()
//point

//var point = Vertex(x: 3, y: 4)
//point.moveHorizontally(by: 6)
//point

var point = Vertex(x: 3, y: 4)
point = point.movedHorizontally(by: 6)

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
