//: ### Equatable
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
//struct Vertex: Equatable {
//    let x, y: Double
//}

struct Vertex {
    let x, y: Double
}

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}

extension Vertex: Equatable{}

//extension Vertex: Equatable{
//    static func ==(lhs: Vertex, rhs: Vertex) -> Bool {
//        return lhs.x == rhs.x && lhs.y == rhs.y
//    }
//}

let pointThreeFour = Vertex(x: 3, y: 4)
let pointTwoFive = Vertex(x: 2, y: 5)
let pointThreeFive = Vertex(x: 3, y: 5)
let pointTwoFour = Vertex(x: 2, y: 4)
let anotherPointThreeFour = Vertex(x: 3, y: 4)

// completely different
pointThreeFour == pointTwoFive
// agree in x or y not both
pointThreeFour == pointThreeFive
pointThreeFour == pointTwoFour
// same value
pointThreeFour == anotherPointThreeFour

pointThreeFour != pointTwoFive
pointThreeFour != anotherPointThreeFour
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
