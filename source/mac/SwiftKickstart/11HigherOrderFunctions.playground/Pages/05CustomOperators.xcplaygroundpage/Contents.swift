//: ### Custom Operators
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
func apply<Input, Output>(to input: Input,
                          using f: (Input) -> Output)
                                           -> Output {
    f(input)
}

func revenueAt199on(_ count: Count) -> USDollar {
    USDollar(count.asDouble() * 1.99 * 0.70)
}
func less7PercentTax(_ income: USDollar) -> USDollar {
    USDollar(income.value * 0.93)
}

let net = less7PercentTax(revenueAt199on(17))

precedencegroup Application {
  associativity: left
}

infix operator |> : Application

func |> <Input, Output>(input: Input,
                        f: (Input) -> Output)
                                   -> Output {
    f(input)
}

17 |> revenueAt199on |> less7PercentTax

precedencegroup Compose {
  associativity: right
  higherThan: Application
}

infix operator >>> : Compose


func >>> <T, U, V>(f:  @escaping (T) -> U,
                   g:  @escaping (U) -> V ) -> (T) -> V {
  {x in g(f(x)) }
}

17 |> revenueAt199on >>> less7PercentTax

let computation =  revenueAt199on >>> less7PercentTax

17 |> computation

computation(17)
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)

