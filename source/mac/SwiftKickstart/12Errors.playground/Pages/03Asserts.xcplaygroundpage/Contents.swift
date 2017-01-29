//: ### Asserts
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

struct WeatherForecast  {
    private let conditionIcons = ["☀️", "⛅️", "☁️", "🌧", "🌨"]
    private let conditionDescriptions = ["sunny", "partially sunny",
                                         "overcast", "rain", "snow"]
    fileprivate var count : Int {
        return conditionIcons.count
    }
    
    fileprivate func description(for index: Int) -> String {
        return "\(conditionIcons[index])"
            + "(\(conditionDescriptions[index]))"
    }
}

//extension WeatherForecast {
//    subscript(index: Int) -> String  {
//        assert(index >= 0 && index < count, "Out of bounds")
//        return description(for: index)
//    }
//}

//extension WeatherForecast {
//    subscript(index: Int) -> String  {
//        precondition(index >= 0 && index < count, "Out of bounds")
//        return description(for: index)
//    }
//}

//extension WeatherForecast {
//    subscript(index: Int) -> String  {
//        if index < 0 || index >= count {
//            assertionFailure("\(index) is out of bounds. "
//                           + "Must be between 0 and \(count).")
//        }
//        return description(for: index)
//    }
//}

extension WeatherForecast {
    subscript(index: Int) -> String  {
        if index < 0 || index >= count {
            preconditionFailure("\(index) is out of bounds. "
                + "Must be between 0 and \(count).")
        }
        return description(for: index)
    }
}


var forecast = WeatherForecast()

forecast[0]
//forecast[-2]
//forecast[20]


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
