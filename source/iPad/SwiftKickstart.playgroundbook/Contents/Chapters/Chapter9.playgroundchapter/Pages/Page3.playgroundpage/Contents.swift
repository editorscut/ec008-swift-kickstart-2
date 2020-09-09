//extension Forecast {
//    static func number(_ index: Int) -> String {
//      assert(range.contains(index),
//             "Out of bounds")
//        return Forecast()[index]
//    }
//}

extension Forecast {
  static func number(_ index: Int) -> String {
    if !range.contains(index) {
      assertionFailure("\(index) is out of bounds. Must be between 0 and \(count).")
    }
    return Forecast()[index]
  }
}

Forecast.number(0)
//Forecast.number(-2)
//Forecast.number(20)
