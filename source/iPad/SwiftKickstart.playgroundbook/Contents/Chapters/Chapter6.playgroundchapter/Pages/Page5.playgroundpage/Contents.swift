struct Vertex: CustomStringConvertible {
  let x, y: Double
}

extension Vertex {
  var description: String {
    "(\(x), \(y))"
  }
}

let point = Vertex(x: 3, y: 4)
