//: ### Custom Operators
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

func apply<Input, Output>(to input: Input, using f: (Input) -> Output) -> Output {
    return f(input)
}

func revenueAt199on(_ count: Count) -> USDollar {
    return USDollar(count.asDouble() * 1.99 * 0.70)
}
func less7PercentTax(_ income: USDollar) -> USDollar {
    return USDollar(income.value * 0.93)
}


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
