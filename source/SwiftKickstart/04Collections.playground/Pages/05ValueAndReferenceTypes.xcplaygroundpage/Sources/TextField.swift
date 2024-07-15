public class TextField {
    public var text: String
    
    public init(_ text: String = ""){
        self.text = text
    }
}

extension TextField: CustomStringConvertible {
    public var description: String {
        "text = \(text)"
    }
}
