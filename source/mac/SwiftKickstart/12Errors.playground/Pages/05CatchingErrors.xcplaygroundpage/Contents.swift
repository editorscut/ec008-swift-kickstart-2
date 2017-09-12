//: ### Catching Errors
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct SubscriptOutOfBoundsError: Error {
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

do {
    try Forecast.number(0)
    try Forecast.number(20)
}
catch {
    print("error")
}

//func forecastNumber(_ index: Int) -> String {
//    guard let forecast = try? Forecast.number(index),
//        index < 3 else {
//            return "error: can't get forecast for index \(index)"
//    }
//    return "forecast number \(index) is \(forecast)"
//}


func forecastNumber(_ index: Int) -> String {
    do {
        let forecast = try Forecast.number(index)
        return "Success!: forecast number \(index) is \(forecast)"
    }
    catch {
        return "Error: \(error)"
    }
}

forecastNumber(0)

forecastNumber(20)

forecastNumber(-2)

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

