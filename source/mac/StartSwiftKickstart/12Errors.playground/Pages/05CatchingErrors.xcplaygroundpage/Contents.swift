//: ### Catching Errors
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)



struct SubscriptOutOfBoundsError : Error {
}

extension Forecast {
    static func number(_ index: Int) throws -> String {
        if index < 0 || index >= Forecast.count {
            throw SubscriptOutOfBoundsError()
        }
        return Forecast()[index]
    }
}

//try Forecast.number(0)
//try Forecast.number(20)
//try Forecast.number(-2)


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
