let numberSold = [17, 29, 11, 15, 32, 21, 27]

func apply<Input, Output>(to input: [Input], using f: (Input) -> Output) -> [Output] {
    var output = [Output]()
    for element in input {
        output.append(f(element))
    }
    return output
}
