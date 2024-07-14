public struct Forecast  {
  private let conditionIcons = ["☀️", "⛅️",
                                "☁️", "🌧",
                                "🌨"]
  private let conditionDescriptions = ["sunny",
                                       "partially sunny",
                                       "overcast",
                                       "rain", "snow"]
  public static let count = 5
  public static let range = 0..<count
  public init(){}
  
  public subscript(index: Int) -> String {
    return "\(conditionIcons[index])"
      + "(\(conditionDescriptions[index]))"
  }
}
