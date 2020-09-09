let numberSold = [17, 29, 11, 15, 32, 21, 27]

func myMap<Input, Output>(to input: [Input],
                          using f: (Input) -> Output)
                                           -> [Output] {
  var output = [Output]()
  for element in input {
    output.append(f(element))
  }
  return output
}

extension Array {
  func myMap<Output>(transform f: (Element) -> Output)
                                        -> [Output] {
    var output = [Output]()
    for element in self {
      output.append(f(element))
    }
    return output
  }
}

numberSold.myMap{
    USDollar($0.asDouble() * 1.99 * 0.70).description
}

numberSold.map{
    USDollar($0.asDouble() * 1.99 * 0.70).description
}

let dailyNumberSold = ["Mon": 17, "Tue": 29,
                       "Wed": 11, "Thu": 15,
                       "Fri": 32, "Sat": 21,
                       "Sun": 27]

dailyNumberSold.map{
    USDollar($0.value.asDouble() * 1.99 * 0.70)
    }.description

let result = dailyNumberSold.mapValues{$0.asDouble() * 1.99 * 0.70}
result
