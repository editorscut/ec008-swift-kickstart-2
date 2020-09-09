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

prefix operator <~

prefix func <~(vertex: Vertex) -> Vertex {
  vertex.movedHorizontally(by: -1)
}

let point1 = Vertex(x: 3, y: 4)
<~point1

postfix operator ~>

postfix func ~>(vertex: Vertex) -> Vertex {
  vertex.movedHorizontally(by: 1)
}

point1~>

infix operator <^>

func <^>(vertexOne: Vertex, vertexTwo: Vertex) -> Double {
  let difference = Vertex(x: vertexOne.x - vertexTwo.x,
                          y: vertexOne.y - vertexTwo.y)
  return difference.magnitude()
}
point1 <^> Vertex(x: -6, y: 16)
