public struct Vertex {
    let x, y : Int
    
    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

extension Vertex : Movable {
    public var location: Vertex {
        return self
    }
    public func movedHorizontally(by deltaX: Int) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
}

extension Vertex : CustomStringConvertible {
    public var description: String {
        return "(\(x), \(y))"
    }
}
