//: ### Custom Operators
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
func apply<Input, Output>(to input: Input, using f: (Input) -> Output) -> Output {
    f(input)
}

func revenueAt199on(_ count: Count) -> USDollar {
    USDollar(count.asDouble() * 1.99 * 0.70)
}
func less7PercentTax(_ income: USDollar) -> USDollar {
    USDollar(income.value * 0.93)
}
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

