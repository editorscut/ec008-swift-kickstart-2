fileprivate let formatter = DollarFormatter()

public struct USDollar {
    public let value: Double
    
    public init(_ value: Double) {
        self.value = (value * 100).rounded(.toNearestOrEven) / 100
    }
}

extension USDollar : CustomStringConvertible {
    public var description: String {
        return formatter.format(self)
    }
}

public func +(lhs: USDollar, rhs: USDollar) -> USDollar {
    return USDollar(lhs.value + rhs.value)
}

