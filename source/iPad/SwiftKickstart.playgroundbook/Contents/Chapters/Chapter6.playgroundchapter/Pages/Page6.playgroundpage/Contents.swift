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
