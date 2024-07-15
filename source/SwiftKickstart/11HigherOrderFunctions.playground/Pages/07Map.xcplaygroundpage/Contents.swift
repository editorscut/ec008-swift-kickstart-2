//: ### Map
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

let numberSold = [17, 29, 11, 15, 32, 21, 27]

extension Sequence {
  func myMap<Output>(transform f: (Element) -> Output) -> [Output] {
    var output = [Output]()
    for element in self {
      output.append(f(element))
    }
    return output
  }
}

numberSold.myMap{
        USDollar($0.asDouble * 1.99 * 0.70)
    }.description

numberSold.map{
        USDollar($0.asDouble * 1.99 * 0.70)
    }.description

let dailyNumberSold = ["Mon": 17, "Tue": 29,
                       "Wed": 11, "Thu": 15,
                       "Fri": 32, "Sat": 21,
                       "Sun": 27]

dailyNumberSold.map{
    USDollar($0.value.asDouble * 1.99 * 0.70)
    }.description

dailyNumberSold.mapValues{
        USDollar($0.asDouble * 1.99 * 0.70)
    }.description



//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
