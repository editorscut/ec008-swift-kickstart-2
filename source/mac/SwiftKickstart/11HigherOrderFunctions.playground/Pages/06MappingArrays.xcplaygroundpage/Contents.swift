//: ### Mapping Arrays
//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
func apply<Input, Output>(to input: Input,
                          using f: (Input) -> Output) -> Output {
    f(input)
}


func apply<Input, Output>(to input: [Input],
                          using f: (Input) -> Output) -> [Output] {
    var output = [Output]()
    for element in input {
        output.append(f(element))
    }
    return output
}

let numberSold = [17, 29, 11, 15, 32, 21, 27]

apply(to: numberSold){
    USDollar($0.asDouble() * 1.99 * 0.70)
}
apply(to: numberSold){
    USDollar($0.asDouble() * 1.99 * 0.70).description
}

func revenueAt199on(_ count: Count) -> USDollar {
    USDollar(count.asDouble() * 1.99 * 0.70)
}

apply(to: numberSold){
    revenueAt199on($0).description
}

apply(to: numberSold){
    revenueAt199on($0)
    }.description

apply(to: numberSold, using: revenueAt199on).description

//: [TOC](00TOC) | [Previous](@previous) | [Next](@next)
