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

//func forecastNumber(_ index: Int) -> String {
//    do {
//        let forecast = try Forecast.number(index)
//        return "Success!: forecast number \(index) is \(forecast)"
//    }
//    catch {
//        return  "Error: \(index) \(error)"
//    }
//}

//func forecastNumber(_ index: Int) -> String {
//    do {
//        let forecast = try Forecast.number(index)
//        return "Success!: forecast number \(index) is \(forecast)"
//    }
//    catch SubscriptOutOfBoundsError.negativeIndexError {
//        return "too small: \(index) \(SubscriptOutOfBoundsError.negativeIndexError)"
//    }
//    catch {
//        return  "Error: \(index) \(error)"
//    }
//}

//func forecastNumber(_ index: Int) -> String {
//    do {
//        let forecast = try Forecast.number(index)
//        return "Success!: forecast number \(index) is \(forecast)"
//    }
//    catch SubscriptOutOfBoundsError.negativeIndexError {
//        return "too small: \(index) \(SubscriptOutOfBoundsError.negativeIndexError)"
//    }
//    catch SubscriptOutOfBoundsError.indexIsTooLargeError(let excess) {
//        return "too big: \(index) "
//             + "\(SubscriptOutOfBoundsError.indexIsTooLargeError(amountOver: excess))"
//    }
//    catch {
//        return  "Error: \(index) \(error)"
//    }
//}

func forecastNumber(_ index: Int) -> String {
    do {
        let forecast = try Forecast.number(index)
        return "Success!: forecast number \(index) is \(forecast)"
    }
    catch SubscriptOutOfBoundsError.negativeIndexError {
        return "too small: \(index) \(SubscriptOutOfBoundsError.negativeIndexError)"
    }
    catch SubscriptOutOfBoundsError.indexIsTooLargeError(let excess) where excess < 5 {
        return "slightly over: \(index) "
            + "\(SubscriptOutOfBoundsError.indexIsTooLargeError(amountOver: excess))\n"
    }
    catch SubscriptOutOfBoundsError.indexIsTooLargeError(let excess) {
        return "too big: \(index) "
            + "\(SubscriptOutOfBoundsError.indexIsTooLargeError(amountOver: excess))"
    }
    catch {
        return  "Error: \(index) \(error)"
    }
}



forecastNumber(3)

forecastNumber(20)

forecastNumber(-2)

forecastNumber(7)
