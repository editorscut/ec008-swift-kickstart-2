public protocol Movable {
  var location: Vertex {get}
  func movedHorizontally(by deltaX: Int) -> Self
  func shiftedRight() -> Self
}

extension Movable {
  public func shiftedRight() -> Self {
    movedHorizontally(by: 1)
  }
}

public func shiftedLeft<T: Movable>(movable: T) -> T {
  movable.movedHorizontally(by: -1)
}
