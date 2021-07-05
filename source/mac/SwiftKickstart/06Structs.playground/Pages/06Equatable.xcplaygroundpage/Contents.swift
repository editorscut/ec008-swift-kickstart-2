//: ### Equatable
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct Vertex {
    let x, y: Double
}

extension Vertex: Equatable {}

extension Vertex: CustomStringConvertible {
    var description: String {
        "(\(x), \(y))"
    }
}

let pointThreeFour = Vertex(x: 3, y: 4)
let pointTwoFive = Vertex(x: 2, y: 5)
let pointThreeFive = Vertex(x: 3, y: 5)
let pointTwoFour = Vertex(x: 2, y: 4)
let anotherPointThreeFour = Vertex(x: 3, y: 4)

pointThreeFour == pointTwoFive
pointThreeFour == pointThreeFive
pointThreeFour == pointTwoFour
pointThreeFour == anotherPointThreeFour
pointThreeFour != pointTwoFive
pointThreeFour != anotherPointThreeFour

extension Vertex: Comparable {
  static func <(lhs: Vertex, rhs: Vertex) -> Bool {
    if lhs.x > rhs.x {return false}
    else if lhs.x < rhs.x {return true}
    else {return lhs.y < rhs.y}
  }
}

pointThreeFour < pointTwoFour
pointThreeFour > pointTwoFour
pointThreeFour < pointThreeFour
pointThreeFour <= pointThreeFour
pointTwoFour < pointTwoFive
pointThreeFour < pointTwoFive
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
