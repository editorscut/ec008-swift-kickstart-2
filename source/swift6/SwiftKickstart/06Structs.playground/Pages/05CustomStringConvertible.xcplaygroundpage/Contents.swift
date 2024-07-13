//: ### CustomStringConvertible
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct Vertex {
  let x, y: Double
}

extension Vertex: CustomStringConvertible {
  var description: String {
      "(\(x), \(y))"
  }
}

let point = Vertex(x: 3, y: 4)
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
