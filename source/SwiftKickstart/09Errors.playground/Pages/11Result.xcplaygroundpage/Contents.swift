//: ### Result
//: [TOC](00TOC) | [Previous](@previous) | Next
enum SubscriptOutOfBoundsError : Error {
  case negativeIndexError
  case indexIsTooLargeError(amountOver: Int)
}

extension SubscriptOutOfBoundsError : CustomDebugStringConvertible {
  var debugDescription: String {
    switch self {
    case .negativeIndexError:
      return "Index is less than zero"
    case .indexIsTooLargeError(let excess):
      return "Index is greater than \(Forecast.count-1) by \(excess)"
    }
  }
}


extension Forecast {
  static func number(_ index: Int) throws -> String {
    if index < 0 {
      throw SubscriptOutOfBoundsError.negativeIndexError
    } else if index >= Forecast.count {
      let excess = index - Forecast.count + 1
      throw SubscriptOutOfBoundsError.indexIsTooLargeError(amountOver: excess)
    }
    return Forecast()[index]
  }
}


func forecastNumber(_ index: Int) -> Result<String, SubscriptOutOfBoundsError>  {
  do {
    let forecast = try Forecast.number(index)
    return .success("forecast number \(index) is \(forecast)")
  }
  catch {
    guard let error = error as? SubscriptOutOfBoundsError else {
      fatalError("Unrecognized error")
    }
    return  .failure(error)
  }
}

forecastNumber(0)

forecastNumber(20)

forecastNumber(-2)
//: ### Rethrows
//: [TOC](00TOC) | [Previous](@previous) | Next
