func apply<Input, Output>(to input: Input, using f: (Input) -> Output) -> Output {
    return f(input)
}
