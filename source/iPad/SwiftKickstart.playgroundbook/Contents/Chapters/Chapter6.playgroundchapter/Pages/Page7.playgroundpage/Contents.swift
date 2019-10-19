struct Vertex {
    var x: Double
    let y: Double
}

extension Vertex: CustomStringConvertible {
    var description: String {
        "(\(x), \(y))"
    }
}

var pointOne = Vertex(x: 3, y: 4)
var pointTwo = pointOne
pointOne.x = 7
pointOne
pointTwo
pointTwo.x = 9
pointOne
pointTwo
