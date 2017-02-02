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

func handleExample(_ value: Int, using f: (Int) throws -> String) -> String {
    do {
        let result = try f(value)
        return "Success: result is \(result)"
    }
    catch {
        return "Error: \(error)"
    }
}

handleExample(3, using: Forecast.number)
handleExample(20, using: Forecast.number)
handleExample(-2, using: Forecast.number)



func rethrowsExample(_ value: Int,  using f: (Int) throws -> String) rethrows -> String {
    return try f(value)
}

try? rethrowsExample(3, using: Forecast.number)


func sayHi(_ repeating: Int) -> String {
    var result = ""
    for _ in 1 ... repeating {
        result += "Hi "
    }
    return result
}

sayHi(5)

rethrowsExample(3, using: sayHi)
