//: ### Map
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

let numberSold = [17, 29, 11, 15, 32, 21, 27]

func apply<Input, Output>(to input: [Input], using f: (Input) -> Output) -> [Output] {
    var output = [Output]()
    for element in input {
        output.append(f(element))
    }
    return output
}


apply(to: numberSold){
    USDollar($0.asDouble() * 1.99 * 0.70)
}
apply(to: numberSold){
    USDollar($0.asDouble() * 1.99 * 0.70).description
}
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
