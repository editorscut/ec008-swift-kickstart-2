struct Size {
    let width, height : Int
}

extension Size : CustomStringConvertible {
    var description: String {
        return "\(width) by \(height)"
    }
}
