public struct Vertex {
    let x, y: Int
    
    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

extension Vertex: Movable {
    public var location: Vertex {
        self
    }
    public func movedHorizontally(by deltaX: Int) -> Vertex {
        Vertex(x: x + deltaX, y: y)
    }
}

extension Vertex: CustomStringConvertible {
    public var description: String {
        "(\(x), \(y))"
    }
}
