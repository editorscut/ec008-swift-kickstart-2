//: ### Optionals
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
extension Forecast {
  static func number(_ index: Int) -> String? {
    if case range = index {
      Forecast()[index]
    } else {
      nil
    }
  }
}

Forecast.number(0)

Forecast.number(-2)

Forecast.number(20)

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
