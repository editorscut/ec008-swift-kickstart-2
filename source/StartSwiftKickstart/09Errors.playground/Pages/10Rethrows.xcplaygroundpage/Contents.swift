//: ### Rethrows
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
enum SubscriptOutOfBoundsError : Error {
    case negativeIndexError
    case indexIsTooLargeError(amountOver: Int)
}

extension SubscriptOutOfBoundsError : CustomDebugStringConvertible {
    var debugDescription: String {
        switch self {
        case .negativeIndexError:
            return "is less than zero"
        case .indexIsTooLargeError(let excess):
            return "is greater than \(Forecast.count) by \(excess)"
        }
    }
}

extension Forecast {
    static func number(_ index: Int) throws -> String {
        if index < 0 {
            throw SubscriptOutOfBoundsError.negativeIndexError
        } else if index >= Forecast.count {
            let excess = index - Forecast.count + 1
            throw SubscriptOutOfBoundsError
                .indexIsTooLargeError(amountOver: excess)
        }
        return Forecast()[index]
    }
}
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
