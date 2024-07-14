//: ### Throwing Errors
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

extension Forecast {
  static func number(_ index: Int) -> String {
    if !range.contains(index) {
      preconditionFailure("\(index) is not between 0 and \(count).")
    }
    return Forecast()[index]
  }
}


//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

