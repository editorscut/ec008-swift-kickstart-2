//: ### Consuming a Closure
//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


func revenueAt199on(_ count: Count) -> USDollar {
    return USDollar(count.asDouble() * 1.99 * 0.70)
}

func revenueAt299on(_ count: Count) -> USDollar {
    return USDollar(count.asDouble() * 2.99 * 0.70)
}

func calculateRevenue(for count: Count, using f: (Count) -> USDollar) -> USDollar {
    return f(count)
}

calculateRevenue(for: 17, using: revenueAt199on)

calculateRevenue(for: 17, using: {count in
    USDollar(count.asDouble() * 1.99 * 0.70)
})

calculateRevenue(for: 17){count in
    USDollar(count.asDouble() * 1.99 * 0.70)
}


calculateRevenue(for: 17){
    return USDollar($0.asDouble() * 1.99 * 0.70)
}
calculateRevenue(for: 17){count in revenueAt199on(count)}

calculateRevenue(for: 17){revenueAt199on($0)}

func apply<Input, Output>(to input: Input, using f: (Input) -> Output) -> Output {
    return f(input)
}

let rev = apply(to: 17){USDollar($0.asDouble() * 1.99 * 0.70)}
rev

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
