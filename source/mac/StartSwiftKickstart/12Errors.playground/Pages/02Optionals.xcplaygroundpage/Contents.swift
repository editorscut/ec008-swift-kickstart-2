//: ### Optionals
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

struct WeatherForecast  {
    private let conditionIcons = ["☀️", "⛅️", "☁️", "🌧", "🌨"]
    private let conditionDescriptions = ["sunny", "partially sunny",
                                         "overcast", "rain", "snow"]
    
    fileprivate func description(for index: Int) -> String {
        return "\(conditionIcons[index])"
            + "(\(conditionDescriptions[index]))"
    }
}

extension WeatherForecast {
    subscript(index: Int) -> String {
        return description(for: index)
    }
}

var forecast = WeatherForecast()

forecast.description(for: 2)
forecast[2]
//forecast[20]
//forecast[-3]

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
