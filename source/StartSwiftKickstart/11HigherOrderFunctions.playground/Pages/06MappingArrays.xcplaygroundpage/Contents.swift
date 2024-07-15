//: ### Mapping Arrays
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

func apply<Input, Output>(to input: Input, using f: (Input) -> Output) -> Output {
  f(input)
}
func revenueAt199on(_ count: Count) -> USDollar {
  USDollar(count.asDouble * 1.99 * 0.70)
}

let numberSold = [17, 29, 11, 15, 32, 21, 27]

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
