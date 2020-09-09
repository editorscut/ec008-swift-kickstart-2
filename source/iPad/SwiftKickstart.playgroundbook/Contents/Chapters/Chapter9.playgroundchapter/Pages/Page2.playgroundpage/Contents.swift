//extension Forecast {
//  static func number(_ index: Int) -> String? {
//    if  range.contains(index) {
//      return Forecast()[index]
//    } else {
//      return nil
//    }
//  }
//}

//extension Forecast {
//  static func number(_ index: Int) -> String? {
//    guard  range.contains(index) else { return nil}
//    return Forecast()[index]
//  }
//}

//extension Forecast {
//  static func number(_ index: Int) -> String? {
//    switch index {
//    case range:
//      return Forecast()[index]
//    default:
//      return nil
//    }
//  }
//}

extension Forecast {
  static func number(_ index: Int) -> String? {
    if case range = index {
      return Forecast()[index]
    } else {
      return nil
    }
  }
}

Forecast.number(0)
Forecast.number(-2)
Forecast.number(20)
