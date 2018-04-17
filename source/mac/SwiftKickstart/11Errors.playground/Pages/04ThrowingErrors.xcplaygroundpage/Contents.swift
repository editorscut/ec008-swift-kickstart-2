//: ### Throwing Errors
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
//extension Forecast {
//    static func number(_ index: Int) -> String {
//        if index < 0 || index >= count {
//            preconditionFailure("\(index) is out of bounds. "
//                + "Must be between 0 and \(count).")
//        }
//        return Forecast()[index]
//    }
//}


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

//try! Forecast.number(0)
//try! Forecast.number(20)

let forecast0 =  try? Forecast.number(0)
let forecast20 = try? Forecast.number(20)

func forecastNumber(_ index: Int) -> String {
    guard let forecast = try? Forecast.number(index),
        index < 3 else {
            return "error: can't get forecast for index \(index)"
    }
    return "forecast number \(index) is \(forecast)"
}

forecastNumber(0)
forecastNumber(20)
forecastNumber(-2)
forecastNumber(3)

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

