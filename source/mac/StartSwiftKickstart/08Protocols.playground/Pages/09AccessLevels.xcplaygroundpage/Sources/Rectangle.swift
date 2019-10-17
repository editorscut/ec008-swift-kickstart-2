fileprivate struct Size {
    let width, height: Int
}

extension Size: CustomStringConvertible {
    fileprivate var description: String {
        "\(width) by \(height)"
    }
}

public struct Rectangle {
    private let topLeftCorner : Vertex
    private let size : Size
    
    public init(topLeftCorner: Vertex, width: Int, height: Int) {
        self.init(topLeftCorner: topLeftCorner, size: Size(width: width, height: height))
    }
    
    private init(topLeftCorner: Vertex, size: Size) {
        self.topLeftCorner = topLeftCorner
        self.size = size
    }
}

extension Rectangle: Movable {
    public var location: Vertex {
        let centerX = topLeftCorner.x + size.width/2
        let centerY = topLeftCorner.y + size.height/2
        return Vertex(x: centerX, y: centerY)
    }
    public func movedHorizontally(by deltaX: Int) -> Rectangle {
        let movedTopLeftCorner
            = topLeftCorner.movedHorizontally(by: deltaX)
        return Rectangle(topLeftCorner:movedTopLeftCorner,
                         size: size)
    }
}

extension Rectangle: CustomStringConvertible {
    public var description: String {
        "\(size) at \(topLeftCorner)"
    }
}
