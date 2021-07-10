func apply<Input, Output>(to input: Input,
                          using f: (Input) -> Output)
                                           -> Output {
    f(input)
}
func revenueAt199on(_ count: Count) -> USDollar {
    USDollar(count.asDouble() * 1.99 * 0.70)
}

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

myMap(to: numberSold,
      using: revenueAt199on).description
