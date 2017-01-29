
func apply<Input, Output>(to input: Input, using f: (Input) -> Output) -> Output {
    return f(input)
}
func revenueAt199on(_ count: Count) -> USDollar {
    return USDollar(count.asDouble() * 1.99 * 0.70)
}
