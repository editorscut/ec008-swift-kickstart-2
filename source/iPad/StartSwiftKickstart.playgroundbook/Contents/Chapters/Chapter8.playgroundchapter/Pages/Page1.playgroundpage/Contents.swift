struct Vertex {
    let x, y : Int
    
    func movedHorizontally(by deltaX: Int) -> Vertex {
        return Vertex(x: x + deltaX, y: y)
    }
}

struct Size {
    let width, height : Int
}

struct Rectangle {
    let topLeftCorner : Vertex
    let size : Size
    
    func movedHorizontally(by deltaX: Int) -> Rectangle {
        let movedTopLeftCorner = topLeftCorner.movedHorizontally(by: deltaX)
        return Rectangle(topLeftCorner: movedTopLeftCorner, size: size)
    }
}
