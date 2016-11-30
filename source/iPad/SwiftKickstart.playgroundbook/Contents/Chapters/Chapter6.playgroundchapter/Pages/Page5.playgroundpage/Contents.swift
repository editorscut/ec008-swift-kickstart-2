struct Vertex {
    let x, y: Double
}

extension Vertex: CustomStringConvertible {
    var description: String {
        return "(\(x), \(y))"
    }
}

let point = Vertex(x: 3, y: 4)
