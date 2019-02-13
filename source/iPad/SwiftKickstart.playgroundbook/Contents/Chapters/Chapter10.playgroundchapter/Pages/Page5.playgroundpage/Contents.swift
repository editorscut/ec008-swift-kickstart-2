func apply<Input, Output>(to input: Input,
                          using f: (Input) -> Output) -> Output {
    return f(input)
}


func revenueAt199on(_ count: Count) -> USDollar {
    return USDollar(count.asDouble() * 1.99 * 0.70)
}

func less7PercentTax(_ income: USDollar) -> USDollar {
    return USDollar(income.value * 0.93)
}

let net = less7PercentTax(revenueAt199on(17))

precedencegroup Application {
    associativity: left
}

infix operator |> : Application

func |> <Input, Output>(input: Input,
                        f: (Input) -> Output ) -> Output {
    return f(input)
}

precedencegroup Compose {
    associativity: right
    higherThan: Application
}

infix operator >>> : Compose


func >>> <T, U, V>(f:  @escaping (T) -> U,
                   g:  @escaping (U) -> V ) -> (T) -> V {
    return {x in g(f(x)) }
}

let composed = revenueAt199on  >>> less7PercentTax

composed(17)

17 |> revenueAt199on  |> less7PercentTax


17 |> revenueAt199on  >>> less7PercentTax
