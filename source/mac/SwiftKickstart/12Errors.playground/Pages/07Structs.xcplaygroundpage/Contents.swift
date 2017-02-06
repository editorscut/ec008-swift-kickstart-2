//: ### Structs
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


struct SubscriptOutOfBoundsError : Error {
    let reason: String
}

extension SubscriptOutOfBoundsError : CustomDebugStringConvertible {
    var debugDescription: String {
        return "Subscript out of bounds - \(reason)"
    }
}


//extension Forecast {
//    static func number(_ index: Int) throws -> String {
//        if index < 0 || index >= Forecast.count {
//            throw SubscriptOutOfBoundsError(reason: 
//                                              "Index out of bounds")
//        }
//        return Forecast()[index]
//    }
//}

extension Forecast {
    static func number(_ index: Int) throws -> String {
        if index < 0 {
            throw SubscriptOutOfBoundsError(reason:
                                              "\(index) is less than zero")
        } else if index >= Forecast.count {
            throw SubscriptOutOfBoundsError(reason:
                                              "\(index) is greater than \(count)")
        }
        return Forecast()[index]
    }
}


func forecastNumber(_ index: Int) -> String {
    do {
        let forecast = try Forecast.number(index)
        return "Success!: forecast number \(index) is \(forecast)"
    }
    catch {
        return  "Error: \(error)"
    }
}

forecastNumber(0)

forecastNumber(20)

forecastNumber(-2)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
