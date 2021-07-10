extension Forecast {
  static func number(_ index: Int) -> String {
    if !range.contains(index) {
      preconditionFailure("\(index) is out of bounds. "
                            + "Must be between 0 and \(count).")
    }
    return Forecast()[index]
  }
}
