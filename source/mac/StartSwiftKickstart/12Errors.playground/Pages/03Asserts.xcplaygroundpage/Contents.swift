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

extension WeatherForecast {
    subscript(index: Int) -> String?  {
        if case 0 ..< count = index {
            return description(for: index)
        } else {
            return nil
        }
    }
}

var forecast = WeatherForecast()

forecast[2]
forecast[-2]
forecast[20]


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
