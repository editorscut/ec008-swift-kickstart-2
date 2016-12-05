public protocol Movable {
    var location : Vertex {get}
    func movedHorizontally(by deltaX: Int) -> Self
    func shiftedRight() -> Self
}

extension Movable {
    public func shiftedRight() -> Self {
        return movedHorizontally(by: 1)
    }
}

public func shiftedLeft<T : Movable>(movable: T) -> T {
    return movable.movedHorizontally(by: -1)
}
