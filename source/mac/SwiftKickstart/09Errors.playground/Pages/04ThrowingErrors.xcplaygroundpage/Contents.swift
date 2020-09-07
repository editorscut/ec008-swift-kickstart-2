//: ### Throwing Errors
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
struct SubscriptOutOfBoundsError: Error {
  
}

extension Forecast {
  static func number(_ index: Int) throws -> String {
    if !range.contains(index){
     throw SubscriptOutOfBoundsError()
    }
    return Forecast()[index]
  }
}

try! Forecast.number(0)
//try! Forecast.number(20)


let forecast0 = try? Forecast.number(0)
let forecast20 = try? Forecast.number(-2)

func forecastNumber(_ index: Int) -> String {
  guard let forecast = try? Forecast.number(index) else {
    return "error: can't get forecast for index \(index)"
  }
  return "forecast number \(index) is \(forecast)"
}

forecastNumber(0)
forecastNumber(-2)
forecastNumber(20)
forecastNumber(3)

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

